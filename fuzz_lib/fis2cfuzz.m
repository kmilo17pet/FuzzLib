function varargout=fis2cfuzz(varargin)
    if nargin>0
        fis=varargin{1};
        if(nargin==2)
            if(strcmpi(varargin{2},'about'))
                disp('FIS2Cfuzz : FIS C code generator for fuzzlib');
                disp('Developed by: Eng. Juan Camilo Gómez Cadavid');
                return;
            end
        end
    else
        error('A FIS Object must be supplied');
    end
    nextline = char([10]); %#ok
    tabchar = char([9]); %#ok
    objname = fix2varname(fis.name);
    code = ['#include <stdio.h>' nextline '#include <stdlib.h>' nextline '#include "fuzzfis.h"' nextline nextline];
    
    if ~strcmp(fis.defuzzMethod,'centroid') || ~strcmp(fis.impMethod,'min') || ~strcmp(fis.aggMethod,'max')
        error('FIS configuration not allowed,  only: defuzzMethod: Centroid, Implication Method: Min, Aggregation Method: Max are allowed.');
    end
    fistype = 'Sugeno';  
    if (strcmp(fis.type,'mamdani'))
        fistype = 'Mamdani';
    end
    andmethod = 'FuzzMin';
    ormethod = 'FuzzMax';
    switch(fis.andMethod)
        case 'min'
            andmethod = 'FuzzMin';
        case 'prod'
            andmethod = 'FuzzProd';
        otherwise
    end
    switch(fis.orMethod)
        case 'max'
            ormethod = 'FuzzMax';
        case 'probor'
            ormethod = 'FuzzProbOR';
        otherwise
    end
    nins = length(fis.input);
    nouts = length(fis.output);
    code = [code '/* FIS Object */' nextline];
    code = [code 'FuzzFIS_t ' objname ';' nextline];
    code = [code '/* I/O Fuzzy Objects */' nextline];
    fuzzin_arrname = [objname '_inputs'];
    fuzzout_arrname = [objname '_outputs'];
    code = [ code 'FuzzIO_t ' fuzzin_arrname '[' num2str(nins) '], '  fuzzout_arrname '[' num2str(nouts) '];' nextline];
    nin_mfs = length([fis.input(:).mf]);
    nout_mfs = length([fis.output(:).mf]);
    code = [code '/* I/O Membership Objects */' nextline];
    code = [ code 'FuzzMF_t MFin[' num2str(nin_mfs) '], MFout[' num2str(nout_mfs) '];' nextline];
    code = [code '/*  I/O Names */' nextline];
    code = [ code 'enum { '];
    for k=1:length(fis.input)
        innames{k}=fix2varname(fis.input(k).name);%#ok
        code = [ code innames{k} ', '];%#ok
    end
    code(end-1)=[];
    code = [ code '};' nextline];
    code = [code  '/*  I/O Membership functions tags */' nextline];
    code = [ code 'enum { '];
    for k=1:length(fis.output)
        outnames{k} = fix2varname(fis.output(k).name);%#ok
        code = [ code outnames{k} ', '];%#ok
    end
    code(end-1)=[];
    code = [ code '};' nextline];

    
    mfinnames={};
    for k=1:nins
        mfinnames = [mfinnames strcat(innames{k},{fis.input(k).mf(:).name}) ]; %#ok
        mfins{k} = strcat(innames{k},{fis.input(k).mf(:).name}); %#ok
    end
    mfoutnames={};
    for k=1:nouts
        mfoutnames = [mfoutnames strcat(outnames{k},{fis.output(k).mf(:).name}) ];%#ok
        mfouts{k} = strcat(outnames{k},{fis.output(k).mf(:).name}); %#ok
    end

    code = [ code 'enum { '];
    for k=1:length(mfinnames)
        mfinnames{k} = fix2varname(mfinnames{k});%#ok
        code = [ code mfinnames{k} ', '];%#ok
    end
    code(end-1)=[];
    code = [ code '};' nextline];

    code = [ code 'enum { '];
    for k=1:length(mfoutnames)
        mfoutnames{k} = fix2varname(mfoutnames{k});%#ok
        code = [ code mfoutnames{k} ', '];%#ok
    end
    code(end-1)=[];
    code = [ code '};' nextline nextline];
    
    code = [code 'FuzzDefRules(' objname '_Rules,' objname '_inputs,' objname '_outputs) =  { ' nextline];
    nrules = length(fis.rule);
    conn = {' AND ',' OR ', ' THEN ', ' END },'};
    for k=1:nrules
        code = [code tabchar '{ IF ' ]; %#ok
        for l=1:nins
            mfindex= fis.rule(k).antecedent(l);
            connection = fis.rule(k).connection;
            if(l==nins), connection=3; end
             if(mfindex==0 && l==nins)
                 code(end-4:end)=[];
                 code = [code ' THEN ']; %#ok
                 continue;
             end
            if mfindex~=0
                if mfindex<0, neg = ' ISNOT ';
                else,      neg = ' IS ';  %#ok
                end
                code = [code innames{l} neg  mfins{l}{abs(mfindex)}  conn{connection}]; %#ok
            end
        end
        
        for l=1:nouts
            mfindex= fis.rule(k).consequent(l);
            connection = 1;
            if(l==nouts), connection=4; end
            if (mfindex==0 && l==nouts) 
                code(end-4:end)=[]; 
                code=[code ' END },']; %#ok
                continue; 
            end
            if mfindex~=0
                %if mfindex<0, neg = ' ISNOT ';
                if mfindex<0
                    error('Negated outputs are not allowed');
                else,      neg = ' IS ';  %#ok
                end
                code = [code outnames{l} neg  mfouts{l}{abs(mfindex)}  conn{connection}]; %#ok
            end
        end
        code = [code nextline]; %#ok
    end
    
      
    code = [code '};' nextline nextline 'int main(int argc, char** argv) {' nextline];
    code = [code tabchar '/* Add inputs */' nextline];
    for k=1:nins
        code = [code tabchar 'FuzzAddIO( ' fuzzin_arrname ', '  innames{k} ', ' num2str(fis.input(k).range(1)) ', '  num2str(fis.input(k).range(2)) ' );' nextline]; %#ok
    end 
       
    for k=1:nouts
        code = [code tabchar 'FuzzAddIO( ' fuzzout_arrname ', '  outnames{k} ', ' num2str(fis.output(k).range(1)) ', '  num2str(fis.output(k).range(2)) ' );' nextline]; %#ok
    end 
    code = [code tabchar '/* Add membership functions to the inputs */' nextline]; 
        
    for k=1:nins
        for l=1:length(fis.input(k).mf)
            params = [NaN NaN NaN NaN];
            fp = fis.input(k).mf(l).params;
            params(1:length(fp)) = fp;
            strp = mat2str(params);
            strp(strp=='[' | strp==']')='';
            strp = strrep(strp, ' ', ' ,');
            strp = strrep(strp, 'NaN', 'FUZZ_IGN');
            code = [code tabchar 'FuzzAddMF( MFin, ' innames{k} , ', ' mfins{k}{l} ', ' fis.input(k).mf(l).type ', ' strp ' );' nextline]; %#ok    
        end
    end
    code = [code tabchar '/* Add membership functions to the outputs */' nextline]; 
   
    for k=1:nouts
        for l=1:length(fis.output(k).mf)
            params = [NaN NaN NaN NaN];
            fp = fis.output(k).mf(l).params;
            params(1:length(fp)) = fp;
            strp = mat2str(params);
            strp(strp=='[' | strp==']')='';
            strp = strrep(strp, ' ', ' ,');
            strp = strrep(strp, 'NaN', 'FUZZ_IGN');
            code = [code tabchar 'FuzzAddMF( MFout, ' outnames{k} , ', ' mfouts{k}{l} ', ' fis.output(k).mf(l).type ', ' strp ' );' nextline]; %#ok
        end
    end
    code = [code nextline tabchar '/* Configure de Inference System */' nextline tabchar 'FuzzSetupFIS( ' objname ', ' fistype ', ' andmethod ', ' ormethod ', ' fuzzin_arrname ', ' fuzzout_arrname ', MFin, MFout );' nextline]; 
    code = [code nextline tabchar '/* Set the crips inputs */' nextline];
    for k=1:nins
        code = [code tabchar '// ' fuzzin_arrname '[' innames{k} '].value = 0.0;' nextline]; %#ok
    end
    code = [code nextline tabchar 'FuzzFuzzification( ', objname ' );' nextline];
    code = [code tabchar 'if ( FuzzInference( ' objname ', '  objname '_Rules ) == -1){' nextline tabchar tabchar '/* Error! */' nextline tabchar '}' nextline];
    code = [code tabchar 'FuzzDeFuzzification( ' objname ' );' nextline];
    code = [code nextline tabchar '/* Get the crips outputs */' nextline];
    for k=1:nouts
        code = [code tabchar '// ' fuzzout_arrname '[' outnames{k} '].value;' nextline]; %#ok
    end
    
    code = [code nextline tabchar 'return (EXIT_SUCCESS);' nextline '}' nextline];
    varargout = {code};
    if(nargout<=0)
        f=findobj('tag','fuzzlib_outfig');
        if(isempty(f))
            f=figure('name','Generated C-ANSI Code','resize','off','NumberTitle','off','menubar','none','position',[0 0 1000 500],'visible','off','tag','fuzzlib_outfig');
            movegui(f,'center');
            ed=uicontrol('parent',f,'style','edit','fontsize',7.5,'fontname','consolas','position',[10 10 980 480],'max',200,'string',code,'HorizontalAlignment','left','tag','fuzzlib_outedt'); %#ok
            set(f,'visible','on');        
        end
        ed=findobj('tag','fuzzlib_outedt');
        set(ed,'string',code);
        clipboard('copy',code);
        varargout = {};
    end
end


function b = fix2varname(a)
    a=a(find((a>=65 & a<=90) | (a>=97 & a<=122), 1,'first'):end);    
    b = a( (a>=48 & a<=57) | (a>=65 & a<=90) | (a>=97 & a<=122) | a==32);
    b(b==32)='_';
    b=b(find(b>65,1,'first'):end);
end