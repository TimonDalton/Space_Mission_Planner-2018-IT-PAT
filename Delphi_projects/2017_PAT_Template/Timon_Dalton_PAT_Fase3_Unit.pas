unit Timon_Dalton_PAT_Fase3_Unit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, ComCtrls, Spin;

type
  TForm1 = class(TForm)
    pgcSpaceMissionPlanner: TPageControl;
    tsGeneral: TTabSheet;
    tsDestination: TTabSheet;
    tsVehicle: TTabSheet;
    img2StageRocket: TImage;
    img1StageRocket: TImage;
    img3StageRocket: TImage;
    pnlFirstStage: TPanel;
    pnl2ndStage: TPanel;
    pnl3rdStage: TPanel;
    pnlStage1MassLost: TPanel;
    pnlStage2MassLost: TPanel;
    pnlPayload: TPanel;
    cbbRocketModel: TComboBox;
    pnlRocketDetails: TPanel;
    pnlCapableAcceleration: TPanel;
    lblCapAcc: TLabel;
    lblCapAccNum: TLabel;
    pgcDestination: TPageControl;
    tsOrbit: TTabSheet;
    tsPlanet: TTabSheet;
    pnlEarthAndSat: TPanel;
    imgEarth1: TImage;
    imgEarth2: TImage;
    imgEarth3: TImage;
    imgEarth4: TImage;
    imgEarth5: TImage;
    imgEarth6: TImage;
    imgSatellite: TImage;
    pnlOrbitSpecs: TPanel;
    lblOrbitSpecs: TLabel;
    mmoMoreInfo: TMemo;
    pnlPickOrbit: TPanel;
    lblDistanceFromSurface: TLabel;
    lblSpdInObt: TLabel;
    trckbrPickOrbit: TTrackBar;
    cbbOrbits: TComboBox;
    edtDistanceFromSurface: TEdit;
    edtSpdInObt: TEdit;
    udDistanceFromSurface: TUpDown;
    udSpdInObt: TUpDown;
    pnlKindOfObt: TPanel;
    lblKindOfObt: TLabel;
    lblOrbit: TLabel;
    pgc1: TPageControl;
    ts1: TTabSheet;
    rgLanguage: TRadioGroup;
    pnlRocketGeneral: TPanel;
    lblRocketTitle: TLabel;
    lblVehicleBasicCapableDeltaV: TLabel;
    lblVehicleBasicAccNum: TLabel;
    cbb3: TComboBox;
    btn1: TButton;
    pnlGeneralRocketExtra: TPanel;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl3: TLabel;
    lbl5: TLabel;
    lbl1: TLabel;
    se1: TSpinEdit;
    edt3: TEdit;
    edt4: TEdit;
    cbb2: TComboBox;
    edt2: TEdit;
    edt5: TEdit;
    pnlGeneralDestinationExtra: TPanel;
    lblDestinationGeneralOrbits: TLabel;
    lblGeneralDvPlanets: TLabel;
    lbl9: TLabel;
    lblPickOne: TLabel;
    rgGeneralDvDesType: TRadioGroup;
    cbbDestintionGeneral: TComboBox;
    cbbGeneralDvPlanets: TComboBox;
    edt1: TEdit;
    btnResetAll: TButton;
    pnlBasicPresets: TPanel;
    pnlGenPresetMissions: TPanel;
    lblPreviousMissions: TLabel;
    cbbFamousMissions: TComboBox;
    pnlBasicRocket_Des: TPanel;
    pnlExampleVehicles: TPanel;
    lblExampleRockets: TLabel;
    cbbFamousRockets: TComboBox;
    pnlExampleDestinations: TPanel;
    lblExampleDestinations: TLabel;
    cbbFamousDestinations: TComboBox;
    pnlDeltaVGeneral: TPanel;
    lblDestinationTitle: TLabel;
    lblBasicDestinationRequiredAcc: TLabel;
    lblBasicRequiredAccNum: TLabel;
    cbbGeneralDvMoreOpp: TComboBox;
    btnGoToDvPage: TButton;
    tsDeltaVDestination: TTabSheet;
    tsRocket: TTabSheet;
    pnlUdChangePAge: TPanel;
    udChangePage: TUpDown;
    pnlSolarSystemPic: TPanel;
    imgPlanets: TImage;
    btnMars: TButton;
    btnJupiter: TButton;
    btnSaturn: TButton;
    btnNeptune: TButton;
    btnUranus: TButton;
    btnMoon: TButton;
    btnVenus: TButton;
    btnMercury: TButton;
    pnlAboutPlanet: TPanel;
    mmoMorePlanetInfo: TMemo;
    pnlSelectDestination: TPanel;
    cbbSelectedInterplanetary: TComboBox;
    rgActionAtDestination: TRadioGroup;
    rgReturn: TRadioGroup;
    pnlDeltaVRequired: TPanel;
    lblMinDeltaVTxt: TLabel;
    lblDeltaVByRocket: TLabel;
    edtDeltaVRequired: TEdit;
    edtRocketDeltaV: TEdit;
    pnl1: TPanel;
    lbl8: TLabel;
    procedure trckbrPickOrbitChange(Sender: TObject);
    procedure Arrange_Orbit;
    procedure Stop_Wrong_In;
    procedure FormCreate(Sender: TObject);
    procedure edtDistanceFromSurfaceChange(Sender: TObject);
    procedure udDistanceFromSurfaceClick(Sender: TObject;
      Button: TUDBtnType);
    procedure btn1Click(Sender: TObject);
    procedure btnGoToDvPageClick(Sender: TObject);
    procedure cbbGeneralDvMoreOppClick(Sender: TObject);
    procedure cbb3Click(Sender: TObject);
    procedure udChangePageClick(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

udDFromSurfaceStarted :Boolean;
Prev :  Integer;


input :string;
AlphaNumInErrMsgShown : Boolean;


RequiredDeltaV,DFromSurf,DFromCen,VeloInObt,TperObt : Real;
ChangingVar:string;

Orbit,LEO,MEO,HEO,GEO:string;

  const

mu = 398588738000000;


E1_KmPerUnt = 10;
E2_KmPerUnt = 12.25;
E3_KmPerUnt = 22;
E4_KmPerUnt = 31.85;
E5_KmPerUnt = 63.7;
E6_KmPerUnt = 90;

E1_SurfPos = 320;
E2_SurfPos = 260;
E3_SurfPos = 145;
E4_SurfPos = 100;
E5_SurfPos = 50;
E6_SurfPos = 36;

sRequiredDeltaV = 'RequiredDeltaV';
sDFromSurf = 'DistanceFromSurface';
sDFromCen = 'DistanceFromEarthCentre';
sVeloInObt = 'VelocityInOrbit';



implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
  begin
    LEO := 'Low Earth Orbit';
    MEO := 'Medium Earth Orbit';
    HEO := 'High Earth Orbit';
    GEO := 'Geostationary Earth Orbit';


    pnlGeneralDestinationExtra.Visible := False;

    udDFromSurfaceStarted := False;;
    pnlUdChangePAge.Visible := False;
    pnl1.Visible := False;

  end;



function Calculate_VeloAtOrbitalAltitude(Value:Real):Real;
begin
Result := Sqr(mu*(1/Value));
end;

function Calculate_OrbitalAltitudeAtVelo(Velo:Real):Real;
begin
  Result := mu/((Velo*Velo));
end;

function Calculate_Satellite_GUI_Pos(DFromSurf,KmPerUnt,SurfacePos : Real) :integer;
  begin
    Result := Round((DFromSurf/ KmPerUnt) + SurfacePos);

  end;


function StopEmptyErr(VarIn : string) :Boolean;
begin
if VarIn = '' then Result := False
               else Result := True
end;

{
Voutvang!!!
}
procedure TForm1.Stop_Wrong_In; //dit is steeds moontlik om errors te kry maar hierdie verwyder die algemeenstes
var
 ViableChar :array[1..12] of Char;
 CurrentPlace,CharCounter:Integer;

 const
AlphaNumInErr = 'Only real numbers are allowed as input';

begin   //stop meeste errors vir wanneer die values heeltyd geread word.
  if StopEmptyErr(Input) = True then
    if Length(Input) = 10 then Delete(Input,10,1);  

       begin
        ViableChar[1] := '1';
        ViableChar[2] := '2';
        ViableChar[3] := '3';
        ViableChar[4] := '4';
        ViableChar[5] := '5';
        ViableChar[6] := '6';
        ViableChar[7] := '7';
        ViableChar[8] := '8';
        ViableChar[9] := '9';
        ViableChar[10]:= '0';
        ViableChar[11]:= ',';
        ViableChar[12]:=' ';

        CurrentPlace := 1;
        CharCounter := 1;

       while  CurrentPlace <= Length(Input)
       do

            if Copy(Input,CurrentPlace,1)= ViableChar[CharCounter]
            then
              begin
               Inc(CurrentPlace);
               CharCounter := 1;
              end
            else
              begin
               Inc(CharCounter);
                if CharCounter = 13
                then
                  begin
                   CharCounter := 1;
                   Delete(Input,CurrentPlace,1);{<-----------removes wrong input}
                   //CurrentPlace not incremented on porpoise
                   if AlphaNumInErrMsgShown =False then //Shows error message. The If statement is present because the message popped up mulitple times while running
                   begin
                    ShowMessage(AlphaNumInErr);
                    AlphaNumInErrMsgShown := True;
                   end;

                  end;
              end;

          end;

end;

procedure TForm1.Arrange_Orbit;
begin


  if DFromSurf >= 300 then
    begin

    if DFromSurf <= 2000  then
      begin
        Orbit := LEO;

        imgEarth1.BringToFront;
        imgSatellite.BringToFront;

        imgSatellite.Left := Calculate_Satellite_GUI_Pos(DFromSurf, E1_KmPerUnt,E1_SurfPos);
      end
    else if DFromSurf <= 3200  then
      begin
        Orbit := MEO;

        imgEarth2.BringToFront;
        imgSatellite.BringToFront;

        imgSatellite.Left := Calculate_Satellite_GUI_Pos(DFromSurf, E2_KmPerUnt,E2_SurfPos);
      end
    else if DFromSurf <= 8200  then
      begin
        Orbit := MEO;

        imgEarth3.BringToFront;
        imgSatellite.BringToFront;

        imgSatellite.Left := Calculate_Satellite_GUI_Pos(DFromSurf, E3_KmPerUnt,E3_SurfPos);
      end
    else if DFromSurf <= 13500  then
      begin
        Orbit := MEO;

        imgEarth4.BringToFront;
        imgSatellite.BringToFront;

        imgSatellite.Left := Calculate_Satellite_GUI_Pos(DFromSurf, E4_KmPerUnt,E4_SurfPos);
      end
    else if DFromSurf <= 30000  then
      begin
        Orbit := MEO;

        imgEarth5.BringToFront;
        imgSatellite.BringToFront;

        imgSatellite.Left := Calculate_Satellite_GUI_Pos(DFromSurf, E5_KmPerUnt,E5_SurfPos);
      end
    else if DFromSurf <= 45000  then
      begin
        if DFromSurf > 35786 then Orbit := HEO;

        imgEarth6.BringToFront;
        imgSatellite.BringToFront;

        imgSatellite.Left := Calculate_Satellite_GUI_Pos(DFromSurf, E6_KmPerUnt,E6_SurfPos);
    end;


  end;
end;


procedure TForm1.trckbrPickOrbitChange(Sender: TObject);
begin
  case  trckbrPickOrbit.Position of
    1: DfromSurf := 300;
    2: DfromSurf := 500;
    3: DfromSurf := 1000;
    4: DfromSurf := 2000; {Low earth orbit---> Medium earth orbit}
    5: DfromSurf := 5000;
    6: DfromSurf := 12000;
    7: DfromSurf := 25000;
    8: DfromSurf := 35786; {Geosychronus earth orbit, marks MEO----> HEO}
  end;

  Arrange_Orbit;
  edtDistanceFromSurface.Text := FloatToStr(DFromSurf);
  {edtSpdInObt.Text := FloatToStr(VeloInObt(DFromSurf));}//Error
end;


procedure TForm1.edtDistanceFromSurfaceChange(Sender: TObject);
begin
input := edtDistanceFromSurface.Text;
Stop_Wrong_In;
AlphaNumInErrMsgShown := False;

Arrange_Orbit;
end;

function check_IncDec(Prev,New :Integer) :Boolean;
begin
  if prev < New
  then Result := True
  else Result := False;
end;


procedure TForm1.udDistanceFromSurfaceClick(Sender: TObject;
  Button: TUDBtnType);
  var
  New , IncAmount :Integer;
begin

IncAmount := 100;

New := udDistanceFromSurface.Position;

  if check_IncDec(Prev,New) = True
  then DFromSurf := DFromSurf + IncAmount
  else DFromSurf := DFromSurf - IncAmount;

Prev := udDistanceFromSurface.Position;
udDFromSurfaceStarted := True;
edtDistanceFromSurface.Text := FloatToStr(DFromSurf);
Arrange_Orbit;   
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
pgcSpaceMissionPlanner.ActivePage := tsVehicle;
end;

procedure TForm1.btnGoToDvPageClick(Sender: TObject);
begin
pgcSpaceMissionPlanner.ActivePage := tsDestination;
end;

procedure TForm1.cbbGeneralDvMoreOppClick(Sender: TObject);
begin
pnlGeneralDestinationExtra.Visible := True;
end;

procedure TForm1.cbb3Click(Sender: TObject);
begin
pnlGeneralRocketExtra.Visible := True;
end;

procedure TForm1.udChangePageClick(Sender: TObject; Button: TUDBtnType);

begin
pgcSpaceMissionPlanner.ActivePageIndex := udChangePage.Position;
end;


end.
