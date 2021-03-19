function [madMags,pvsMags, madCols, pvsCols] =getDeviceNames(line)
%get names of correctors
%input
%line - 'SXR' or 'HXR'


if strcmp(line, 'HXR')
    pvsMags={'XCOR:LTUH:115';
        'XCOR:LTUH:144';
        'XCOR:LTUH:178';
        'XCOR:LTUH:248';
        'XCOR:LTUH:288';
        'XCOR:LTUH:348';
        'XCOR:LTUH:388';
        'XCOR:LTUH:448';
        'XCOR:LTUH:488';
        'XCOR:LTUH:558';
        'XCOR:LTUH:588';
        'XCOR:LTUH:642';
        'XCOR:LTUH:678';
        'XCOR:LTUH:718';
        'XCOR:LTUH:738';
        'XCOR:LTUH:758';
        'XCOR:LTUH:818';
        'XCOR:LTUH:858';
        'YCOR:LTUH:105';
        'YCOR:LTUH:133';
        'YCOR:LTUH:171';
        'YCOR:LTUH:185';
        'YCOR:LTUH:253';
        %'YCOR:LTUH:256';
        'YCOR:LTUH:293';
        'YCOR:LTUH:353';
        'YCOR:LTUH:383';
        'YCOR:LTUH:453';
        'YCOR:LTUH:493';
        'YCOR:LTUH:563';
        'YCOR:LTUH:593';
        'YCOR:LTUH:611';
        'YCOR:LTUH:657';
        'YCOR:LTUH:727';
        'YCOR:LTUH:747';
        'YCOR:LTUH:767';
        'YCOR:LTUH:837';
        'YCOR:LTUH:877';
        'QUAD:LTUH:110';
        'QUAD:LTUH:120';
        'QUAD:LTUH:130';
        'QUAD:LTUH:150';
        'QUAD:LTUH:170';
        'QUAD:LTUH:180';
        'QUAD:LTUH:190';
        'QUAD:LTUH:250';
        'QUAD:LTUH:285';
        'QUAD:LTUH:290';
        'QUAD:LTUH:295';
        'QUAD:LTUH:350';
        'QUAD:LTUH:385';
        'QUAD:LTUH:390';
        'QUAD:LTUH:395';
        'QUAD:LTUH:440';
        'QUAD:LTUH:450';
        'QUAD:LTUH:460';
        'QUAD:LTUH:485';
        'QUAD:LTUH:490';
        'QUAD:LTUH:495';
        'QUAD:LTUH:550';
        'QUAD:LTUH:585';
        'QUAD:LTUH:590';
        'QUAD:LTUH:595';
        'QUAD:LTUH:620';
        'QUAD:LTUH:640';
        'QUAD:LTUH:660';
        'QUAD:LTUH:665';
        'QUAD:LTUH:680';
        'QUAD:LTUH:720';
        'QUAD:LTUH:730';
        'QUAD:LTUH:740';
        'QUAD:LTUH:750';
        'QUAD:LTUH:760';
        'QUAD:LTUH:770';
        'QUAD:LTUH:820';
        'QUAD:LTUH:840';
        'QUAD:LTUH:860';
        'QUAD:LTUH:880';};
    
    pvsCols ={%'CYBX32X';
        %'CYBX32Y';
        'COLL:LTUH:253'; %:NEGX:LVPOS'; 
        'COLL:LTUH:393'; %:NEGX:LVPOS';
        'COLL:LTUH:452'; %:NEGX:LVPOS';
        'COLL:LTUH:475';}; %:POSX:LVPOS';
    
elseif strcmp(line, 'SXR')
    
   pvsMags={'XCOR:LTUS:118';
        'XCOR:LTUS:148';
        'XCOR:LTUS:228';
        'XCOR:LTUS:296';
        'XCOR:LTUS:368';
        'XCOR:LTUS:448';
        'XCOR:LTUS:508';
        'XCOR:LTUS:548';
        'XCOR:LTUS:568';
        'XCOR:LTUS:616';
        'XCOR:LTUS:658';
        'XCOR:LTUS:718';
        'XCOR:LTUS:722';
        'XCOR:LTUS:738';
        'XCOR:LTUS:758';
        %'XCOR:LTUS:768';
        'XCOR:LTUS:826';
        'XCOR:LTUS:858';
        'YCOR:LTUS:111';
        'YCOR:LTUS:183';
        'YCOR:LTUS:267';
        'YCOR:LTUS:341';
        'YCOR:LTUS:427';
        'YCOR:LTUS:471';
        'YCOR:LTUS:499';
        'YCOR:LTUS:547';
        'YCOR:LTUS:561';
        'YCOR:LTUS:577';
        'YCOR:LTUS:641';
        'YCOR:LTUS:677';
        'YCOR:LTUS:721';
        'YCOR:LTUS:729';
        'YCOR:LTUS:749';
        %'YCOR:LTUS:767';
        'YCOR:LTUS:777';
        'YCOR:LTUS:839';
        'YCOR:LTUS:877'};
    
  pvsCols ={%'CYBX32X';
        %'CYBX32Y';
        'COLL:LTUH:393'; %:NEGX:LVPOS';
        'COLL:LTUH:452'; %:NEGX:LVPOS';
        'COLL:LTUH:475';}; %:POSX:LVPOS';
   
    
end

madMags = model_nameConvert(pvsMags,'MAD');
madCols = model_nameConvert(pvsCols,'MAD');