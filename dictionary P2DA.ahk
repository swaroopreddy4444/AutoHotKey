#SingleInstance Force

FileCopy, %A_Startup%\*.ahk, E:\softwares\GitHub\AutoHotKey\

^+e::run "C:\Program Files\AutoHotkey\SciTE\SciTE.exe" "%A_ScriptFullPath%"
^+r:: Reload

^+v:: send, %Clipboard%

#f12::
run, "E:\softwares\AUTOHOTKEY\Button_GUI.ahk"
return

#+e:: run, "%userprofile%\eclipse\java-2021-12\eclipse\eclipse.exe"

!^R:: ; CTRL+ALT+R TO replace Aadhar OTP & Update
{
     old:=Clipboardall
     Clipboard:=""
     send, ^c
     ClipWait,1

     File = dictionary.ahk ; file path here
     FileRead, text, %File%
     FileDelete, %File%
     FileAppend, % SubStr(text, 1, RegExMatch(text, "\R.*\R?$")-15), %File%
     if Clipboard is not number
		goto last
     sl:=StrLen(Clipboard)
     if (sl = 6)
     {
      aotp:=Clipboard
      FileAppend ::aotp::%aotp%`nreturn, dictionary.ahk
      MsgBox, The aadhar OTP is updated to %aotp%.
      Run %A_AHKPath% dictionary.ahk
	  goto pass
     }

     else
     {
      FileAppend ::aotp::000000`nreturn, dictionary.ahk
      MsgBox, This is not aadhar OTP `nlength=%sl% `n Resetted to 000000.
      Run %A_AHKPath% dictionary.ahk
	  goto pass
     }
     last:
	  FileAppend ::aotp::000000`nreturn, dictionary.ahk
      MsgBox, This is not a number`n resetted to 000000.
	  Run %A_AHKPath% dictionary.ahk
     pass:
	 Clipboard:=""
     Clipboard:=old
Return
}
+F2::
{
tmp:=Clipboardall
	Clipboard:=""
	Send,^c
	ClipWait,1
	path:=Clipboard
	Clipboard:=tmp
	if ErrorLevel
		return
        run, Edit %path%
return
}
#+H::
If (!A_IsAdmin){
Run *RunAs "%A_AhkPath%" "%A_ScriptFullPath%"
}
If A_OSVersion in WIN_2003,WIN_XP,WIN_2000
{
	MsgBox This Script is designed for Windows Vista and 7+
	ExitApp
}
InputBox, Url , Disable website, Enter the website to disable , , 240, 140
Url:= Trim(Url,"http://")
HostsFile = %A_WinDir%\System32\drivers\etc\hosts

FileAppend, `n127.0.0.1 %Url%, %A_WinDir%\System32\drivers\etc\hosts
;~ Notepad = %A_WinDir%\NotePad.exe
RUN "Notepad" "%HostsFile%"
return


#+F2::
{
tmp:=Clipboardall
	Clipboard:=""
	Send,^c
	ClipWait,1
	path:=Clipboard
	Clipboard:=tmp
	if ErrorLevel
		return
	run,c:\Program Files\Notepad++\notepad++.exe "%path%"

return
}


::]date::
{
SendInput %A_DD%-%A_MM%-%A_YYYY%
return
}

::]time::  ; This hotstring replaces "time" with the current date and time via the commands below.
{
FormatTime, CurrentTime,, hh:mm tt  ; It will look like 03:53 PM
SendInput %CurrentTime%
return
}

:*:8802::880288423506
:*:smail::swaroopreddy4444@gmail.com


:*:SRCO::Seetharampuram Colony

#c:: ; calculator
{
	if WinExist("Calculator ahk_class CalcFrame") or WinExist("Calculator ahk_class ApplicationFrameWindow")
		if WinActive()
			WinMinimize
		else
			WinActivate
	else
		Run calc.exe
	return
}

#+p:: ; pmu housing
{
run, msedge.exe "pmuhousing.ap.gov.in/APSHCLPMU/VIEWS/Loginform.aspx"
SetCapsLockState, On
Sleep,60000
SetCapsLockState, Off
RETURN
}

#+v:: ; pmu housing
{
	if WinExist("ahk_class Chrome_WidgetWin_1 ahk_exe msedge.exe")
		if WinActive()
			WinMinimize
		else
			WinActivate
	else
		run, msedge.exe "https://vswsonline.ap.gov.in/#/home"
	return

}
^#I:: ; income robo
{
run, C:\Users\Parigi-2-DA\Desktop\ROBO 4.0\INCMMMME.mcr
return
}
^#C:: ; caste robo
{
run, C:\Users\Parigi-2-DA\Desktop\ROBO 4.0\caste.mcr
return
}
;^#B::
{
run, C:\Users\Parigi-2-DA\Desktop\ROBO 4.0\SBI.mcr
return
}
+#B:: ; bluetooth
{
run, C:\Users\Parigi-2-DA\Desktop\bluetooth.lnk
return
}
#B:: ; bluetooth ONLY
{
run, fsquirt -receive
return
}
#W:: ; whatsapp
{
	if WinExist("WhatsApp ahk_exe WhatsApp.exe") or WinExist("WhatsApp ahk_class Chrome_WidgetWin_1")
		if WinActive()
			WinMinimize
		else
			WinActivate
	else
		run, "%USERPROFILE%\AppData\Local\WhatsApp\WhatsApp.exe"
	return
}

#+W:: ; whatsapp to new Number
{
IfWinNotExist ("WhatsApp ahk_class Chrome_WidgetWin_1 ahk_exe WhatsApp.exe")
	run, "%USERPROFILE%\AppData\Local\WhatsApp\WhatsApp.exe"
	Sleep, 1000
	if WinActive()
			WinMinimize
	Sleep,500
InputBox, UserInput, Whatsapp Web, Please enter a phone number., , 240, 140
if ErrorLevel
    exit
else
   Run, "chrome.exe" "https://api.whatsapp.com/send/?phone=91%UserInput%&text&app_absent=0"
return
}
#+A:: ; Aadhaar Enrolment Client
{
run, "C:\Users\Public\Desktop\Aadhaar Enrolment Client.lnk"
return
}
#+Z:: ; Zerodha separate window
{
Run, "C:\Program Files\Google\Chrome\Application\chrome.exe" --new-window --profile-directory="Profile 1" "https://kite.zerodha.com/" ; swaroop reddy chrome

return
}
#+T:: ; Turnitin separate window
{
Run, "C:\Program Files\Google\Chrome\Application\chrome.exe" --new-window --profile-directory="Profile 1" "https://www.turnitin.com/login_page.asp?lang=en_us" ; swaroop reddy chrome

return
}
#+G:: ; GSWS Site new tab
{
 Run, "C:\Program Files\Google\Chrome\Application\chrome.exe" --new-tab --profile-directory="default" "https://gramawardsachivalayam.ap.gov.in/" ; parigi-2 chrome

 return
}
#+M:: ;IBomma Movies
{
 Run, "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" --new-window "https://ww4.ibomma.pw/telugu-movies/" ;  brave

 return
}
#+Y:: ;Youtube
{
 Run, "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" --new-window  "https://youtube.com/" ;  brave

 return
}


#+u:: ; UPPERCASE for SELECTED data
{
old:=Clipboardall
Clipboard:=""
send, ^c
ClipWait,1
sleep 40
StringUpper Clipboard, Clipboard
sleep 200
send, ^v
send, {Shift}
Clipboard:=""
Clipboard:=old
return
}

#+l:: ; lowercase for selected data
{
old:=Clipboardall
Clipboard:=""
send, ^c
ClipWait,1
sleep 40
StringLower Clipboard, Clipboard
sleep 200
send, ^v
send, {Shift}
Clipboard:=""
Clipboard:=old
return
}

; MICROSOFT AUTOCORRECT data extracted..........
{
:C:(c)::©
:C:(r)::®
:C:(tm)::™
:C:...::…
:C:abbout::about
:C:abotu::about
:C:abouta::about a
:C:aboutit::about it
:C:aboutthe::about the
:C:abscence::absence
:C:accesories::accessories
:C:accidant::accident
:C:accomodate::accommodate
:C:accordingto::according to
:C:accross::across
:C:acheive::achieve
:C:acheived::achieved
:C:acheiving::achieving
:C:acn::can
:C:acommodate::accommodate
:C:acomodate::accommodate
:C:actualyl::actually
:C:additinal::additional
:C:addtional::additional
:C:adequit::adequate
:C:adequite::adequate
:C:adn::and
:C:advanage::advantage
:C:affraid::afraid
:C:afterthe::after the
:C:againstt he::against the
:C:aganist::against
:C:aggresive::aggressive
:C:agian::again
:C:agreemeent::agreement
:C:agreemeents::agreements
:C:agreemnet::agreement
:C:agreemnets::agreements
:C:agressive::aggressive
:C:ahppen::happen
:C:ahve::have
:C:allwasy::always
:C:allwyas::always
:C:almots::almost
:C:almsot::almost
:C:alomst::almost
:C:alot::a lot
:C:alraedy::already
:C:alreayd::already
:C:alreday::already
:C:alwasy::always
:C:alwats::always
:C:alway::always
:C:alwyas::always
:C:amde::made
:C:Ameria::America
:C:amke::make
:C:amkes::makes
:C:anbd::and
:C:andone::and one
:C:andt he::and the
:C:andteh::and the
:C:andthe::and the
:C:anothe::another
:C:anual::annual
:C:apparant::apparent
:C:apparrent::apparent
:C:appearence::appearance
:C:appeares::appears
:C:applicaiton::application
:C:applicaitons::applications
:C:applyed::applied
:C:appointiment::appointment
:C:approrpiate::appropriate
:C:approrpriate::appropriate
:C:aquisition::acquisition
:C:aquisitions::acquisitions
:C:aren;t::aren't
:C:arguement::argument
:C:arguements::arguments
:C:arn't::aren't
:C:arond::around
:C:artical::article
:C:articel::article
:C:asdvertising::advertising
:C:askt he::ask the
:C:assistent::assistant
:C:asthe::as the
:C:atention::attention
:C:atmospher::atmosphere
:C:attentioin::attention
:C:atthe::at the
:C:audeince::audience
:C:audiance::audience
:C:availalbe::available
:C:awya::away
:C:aywa::away
:C:bakc::back
:C:balence::balance
:C:ballance::balance
:C:baout::about
:C:bcak::back
:C:beacuse::because
:C:becasue::because
:C:becaus::because
:C:becausea::because a
:C:becauseof::because of
:C:becausethe::because the
:C:becauseyou::because you
:C:becomeing::becoming
:C:becomming::becoming
:C:becuase::because
:C:becuse::because
:C:befoer::before
:C:beggining::beginning
:C:begining::beginning
:C:beginining::beginning
:C:beleiev::believe
:C:beleieve::believe
:C:beleif::belief
:C:beleive::believe
:C:beleived::believed
:C:beleives::believes
:C:benifit::benefit
:C:benifits::benefits
:C:betwen::between
:C:beutiful::beautiful
:C:blase::blasé
:C:boxs::boxes
:C:brodcast::broadcast
:C:butthe::but the
:C:bve::be
:C:byt he::by the
:C:cafe::café
:C:caharcter::character
:C:calcullated::calculated
:C:calulated::calculated
:C:can't of been::can't have been
:C:can;t::can't
:C:candidtae::candidate
:C:candidtaes::candidates
:C:catagory::category
:C:categiory::category
:C:certian::certain
:C:challange::challenge
:C:challanges::challenges
:C:chaneg::change
:C:chanegs::changes
:C:changable::changeable
:C:changeing::changing
:C:changng::changing
:C:charachter::character
:C:charachters::characters
:C:charactor::character
:C:charecter::character
:C:charector::character
:C:cheif::chief
:C:chekc::check
:C:chnage::change
:C:cieling::ceiling
:C:circut::circuit
:C:claer::clear
:C:claered::cleared
:C:claerly::clearly
:C:cliant::client
:C:cliche::cliché
:C:cna::can
:C:colection::collection
:C:comanies::companies
:C:comany::company
:C:comapnies::companies
:C:comapny::company
:C:combintation::combination
:C:comited::committed
:C:comittee::committee
:C:commadn::command
:C:comming::coming
:C:commitee::committee
:C:committe::committee
:C:committment::commitment
:C:committments::commitments
:C:committy::committee
:C:comntain::contain
:C:comntains::contains
:C:compair::compare
:C:company;s::company's
:C:compleated::completed
:C:compleatly::completely
:C:compleatness::completeness
:C:completly::completely
:C:completness::completeness
:C:composate::composite
:C:comtain::contain
:C:comtains::contains
:C:comunicate::communicate
:C:comunity::community
:C:condolances::condolences
:C:conected::connected
:C:conferance::conference
:C:confirmmation::confirmation
:C:considerit::considerate
:C:considerite::considerate
:C:consonent::consonant
:C:conspiricy::conspiracy
:C:consultent::consultant
:C:convertable::convertible
:C:cooparate::cooperate
:C:cooporate::cooperate
:C:corproation::corporation
:C:corproations::corporations
:C:corruptable::corruptible
:C:cotten::cotton
:C:coudl::could
:C:coudln't::couldn't
:C:coudn't::couldn't
:C:could of been::could have been
:C:could of had::could have had
:C:couldn;t::couldn't
:C:couldnt::couldn't
:C:couldthe::could the
:C:cpoy::copy
:C:creme::crème
:C:ctaegory::category
:C:cusotmer::customer
:C:cusotmers::customers
:C:cutsomer::customer
:C:cutsomers::customers
:C:cxan::can
:C:danceing::dancing
:C:dcument::document
:C:deatils::details
:C:decison::decision
:C:decisons::decisions
:C:decor::décor
:C:defendent::defendant
:C:definately::definitely
:C:deja vu::déjà vu
:C:deptartment::department
:C:desicion::decision
:C:desicions::decisions
:C:desision::decision
:C:desisions::decisions
:C:detente::détente
:C:develeoprs::developers
:C:devellop::develop
:C:develloped::developed
:C:develloper::developer
:C:devellopers::developers
:C:develloping::developing
:C:devellopment::development
:C:devellopments::developments
:C:devellops::develop
:C:develope::develop
:C:developement::development
:C:developements::developments
:C:developor::developer
:C:developors::developers
:C:develpment::development
:C:diaplay::display
:C:didint::didn't
:C:didn;t::didn't
:C:didnot::did not
:C:didnt::didn't
:C:difefrent::different
:C:diferences::differences
:C:differance::difference
:C:differances::differences
:C:differant::different
:C:differemt::different
:C:differnt::different
:C:diffrent::different
:C:directer::director
:C:directers::directors
:C:directiosn::direction
:C:disatisfied::dissatisfied
:C:discoverd::discovered
:C:disign::design
:C:dispaly::display
:C:dissonent::dissonant
:C:distribusion::distribution
:C:divsion::division
:C:do'nt::don't
:C:docuement::documents
:C:docuemnt::document
:C:documetn::document
:C:documnet::document
:C:documnets::documents
:C:doe snot::does not
:C:doens't::doesn't
:C:doese::does
:C:doesn;t::doesn't
:C:doesnt::doesn't
:C:doign::doing
:C:doimg::doing
:C:doind::doing
:C:dollers::dollars
:C:don't no::don't know
:C:don;t::don't
:C:donig::doing
:C:dont::don't
:C:dosn't::doesn't
:C:driveing::driving
:C:drnik::drink
:C:eclair::éclair
:C:efel::feel
:C:effecient::efficient
:C:efort::effort
:C:eforts::efforts
:C:ehr::her
:C:eligable::eligible
:C:embarass::embarrass
:C:emigre::émigré
:C:enought::enough
:C:entree::entrée
:C:equippment::equipment
:C:equivalant::equivalent
:C:esle::else
:C:especally::especially
:C:especialyl::especially
:C:espesially::especially
:C:excellant::excellent
:C:excercise::exercise
:C:exchagne::exchange
:C:exchagnes::exchanges
:C:excitment::excitement
:C:exhcange::exchange
:C:exhcanges::exchanges
:C:experiance::experience
:C:experienc::experience
:C:exprience::experience
:C:exprienced::experienced
:C:eyt::yet
:C:facade::façade
:C:faeture::feature
:C:faetures::features
:C:familair::familiar
:C:familar::familiar
:C:familliar::familiar
:C:fammiliar::familiar
:C:feild::field
:C:feilds::fields
:C:fianlly::finally
:C:fidn::find
:C:finalyl::finally
:C:firends::friends
:C:firts::first
:C:follwo::follow
:C:follwoing::following
:C:fora::for a
:C:foriegn::foreign
:C:forthe::for the
:C:forwrd::forward
:C:forwrds::forwards
:C:foudn::found
:C:foward::forward
:C:fowards::forwards
:C:freind::friend
:C:freindly::friendly
:C:freinds::friends
:C:frmo::from
:C:fromt he::from the
:C:fromthe::from the
:C:furneral::funeral
:C:fwe::few
:C:garantee::guarantee
:C:gaurd::guard
:C:gemeral::general
:C:gerat::great
:C:geting::getting
:C:gettin::getting
:C:gievn::given
:C:giveing::giving
:C:gloabl::global
:C:goign::going
:C:gonig::going
:C:govenment::government
:C:goverment::government
:C:gruop::group
:C:gruops::groups
:C:grwo::grow
:C:guidlines::guidelines
:C:hadbeen::had been
:C:hadn;t::hadn't
:C:haev::have
:C:hapen::happen
:C:hapened::happened
:C:hapening::happening
:C:hapens::happens
:C:happend::happened
:C:hasbeen::has been
:C:hasn;t::hasn't
:C:hasnt::hasn't
:C:havebeen::have been
:C:haveing::having
:C:haven;t::haven't
:C:hda::had
:C:he;ll::he'll
:C:hearign::hearing
:C:helpfull::helpful
:C:herat::heart
:C:here;s::here's
:C:hesaid::he said
:C:hewas::he was
:C:hge::he
:C:hismelf::himself
:C:hlep::help
:C:hsa::has
:C:hsi::his
:C:hte::the
:C:htere::there
:C:htese::these
:C:htey::they
:C:hting::thing
:C:htink::think
:C:htis::this
:C:htp:::http:
:C:http:\\::http://
:C:httpL::http:
:C:hvae::have
:C:hvaing::having
:C:hwich::which
:C:i ::I
:C:i snot::is not
:C:I"m::I'm
:C:I;d::I'd
:C:I;ll::I'll
:C:idae::idea
:C:idaes::ideas
:C:identofy::identify
:C:ihs::his
:C:iits the::it's the
:C:imediate::immediate
:C:imediatly::immediately
:C:immediatly::immediately
:C:importent::important
:C:importnat::important
:C:impossable::impossible
:C:improvemnt::improvement
:C:improvment::improvement
:C:includ::include
:C:indecate::indicate
:C:indenpendence::independence
:C:indenpendent::independent
:C:indepedent::independent
:C:independance::independence
:C:independant::independent
:C:influance::influence
:C:infomation::information
:C:informatoin::information
:C:inital::initial
:C:instaleld::installed
:C:insted::instead
:C:insurence::insurance
:C:int he::in the
:C:inteh::in the
:C:interum::interim
:C:inthe::in the
:C:inwhich::in which
:C:isn;t::isn't
:C:isthe::is the
:C:it snot::it's not
:C:it' snot::it's not
:C:it;ll::it'll
:C:it;s::it's
:C:itis::it is
:C:ititial::initial
:C:itnerest::interest
:C:itnerested::interested
:C:itneresting::interesting
:C:itnerests::interests
:C:its a::it's a
:C:its the::it's the
:C:itwas::it was
:C:iwll::will
:C:iwth::with
:C:jsut::just
:C:jugment::judgment
:C:knowldge::knowledge
:C:knowlege::knowledge
:C:knwo::know
:C:knwon::known
:C:knwos::knows
:C:konw::know
:C:konwn::known
:C:konws::knows
:C:labratory::laboratory
:C:lastyear::last year
:C:learnign::learning
:C:lenght::length
:C:let's him::lets him
:C:let's it::lets it
:C:let;s::let's
:C:levle::level
:C:libary::library
:C:librarry::library
:C:librery::library
:C:liek::like
:C:liekd::liked
:C:lieutenent::lieutenant
:C:liev::live
:C:likly::likely
:C:lisense::license
:C:littel::little
:C:litttle::little
:C:liuke::like
:C:liveing::living
:C:loev::love
:C:lonly::lonely
:C:lookign::looking
:C:maintenence::maintenance
:C:makeing::making
:C:managment::management
:C:mantain::maintain
:C:marraige::marriage
:C:may of been::may have been
:C:may of had::may have had
:C:memeber::member
:C:merchent::merchant
:C:mesage::message
:C:mesages::messages
:C:might of been::might have been
:C:might of had::might have had
:C:mispell::misspell
:C:mispelling::misspelling
:C:mispellings::misspellings
:C:mkae::make
:C:mkaes::makes
:C:mkaing::making
:C:moeny::money
:C:morgage::mortgage
:C:mroe::more
:C:must of been::must have been
:C:must of had::must have had
:C:mysefl::myself
:C:myu::my
:C:naive::naïve
:C:necassarily::necessarily
:C:necassary::necessary
:C:neccessarily::necessarily
:C:neccessary::necessary
:C:necesarily::necessarily
:C:necesary::necessary
:C:negotiaing::negotiating
:C:nkow::know
:C:nothign::nothing
:C:nver::never
:C:nwe::new
:C:nwo::now
:C:obediant::obedient
:C:ocasion::occasion
:C:occassion::occasion
:C:occured::occurred
:C:occurence::occurrence
:C:occurrance::occurrence
:C:ocur::occur
:C:oeprator::operator
:C:ofits::of its
:C:oft he::of the
:C:ofthe::of the
:C:oging::going
:C:ohter::other
:C:omre::more
:C:oneof::one of
:C:onepoint::one point
:C:ont he::on the
:C:onthe::on the
:C:onyl::only
:C:oppasite::opposite
:C:opperation::operation
:C:oppertunity::opportunity
:C:opposate::opposite
:C:opposible::opposable
:C:opposit::opposite
:C:oppotunities::opportunities
:C:oppotunity::opportunity
:C:orginization::organization
:C:orginized::organized
:C:otehr::other
:C:otu::out
:C:outof::out of
:C:overthe::over the
:C:owrk::work
:C:owuld::would
:C:oxident::oxidant
:C:papaer::paper
:C:parliment::parliament
:C:partof::part of
:C:paymetn::payment
:C:paymetns::payments
:C:pciture::picture
:C:peice::piece
:C:peices::pieces
:C:peolpe::people
:C:peopel::people
:C:percentof::percent of
:C:percentto::percent to
:C:performence::performance
:C:perhasp::perhaps
:C:perhpas::perhaps
:C:permanant::permanent
:C:perminent::permanent
:C:personalyl::personally
:C:pleasent::pleasant
:C:poeple::people
:C:porblem::problem
:C:porblems::problems
:C:porvide::provide
:C:possable::possible
:C:postition::position
:C:potentialy::potentially
:C:pregnent::pregnant
:C:presance::presence
:C:probelm::problem
:C:probelms::problems
:C:prominant::prominent
:C:protege::protégé
:C:protoge::protégé
:C:psoition::position
:C:ptogress::progress
:C:puting::putting
:C:pwoer::power
:C:quater::quarter
:C:quaters::quarters
:C:quesion::question
:C:quesions::questions
:C:questioms::questions
:C:questiosn::questions
:C:questoin::question
:C:quetion::question
:C:quetions::questions
:C:realyl::really
:C:reccomend::recommend
:C:reccommend::recommend
:C:receieve::receive
:C:recieve::receive
:C:recieved::received
:C:recieving::receiving
:C:recomend::recommend
:C:recomendation::recommendation
:C:recomendations::recommendations
:C:recomended::recommended
:C:reconize::recognize
:C:recrod::record
:C:religous::religious
:C:reluctent::reluctant
:C:remeber::remember
:C:reommend::recommend
:C:representativs::representatives
:C:representives::representatives
:C:represetned::represented
:C:represnt::represent
:C:reserach::research
:C:resollution::resolution
:C:resorces::resources
:C:respomd::respond
:C:respomse::response
:C:responce::response
:C:responsability::responsibility
:C:responsable::responsible
:C:responsibile::responsible
:C:responsiblity::responsibility
:C:restaraunt::restaurant
:C:restuarant::restaurant
:C:reult::result
:C:reveiw::review
:C:reveiwing::reviewing
:C:rumers::rumors
:C:rwite::write
:C:rythm::rhythm
:C:saidhe::said he
:C:saidit::said it
:C:saidt he::said the
:C:saidthat::said that
:C:saidthe::said the
:C:scedule::schedule
:C:sceduled::scheduled
:C:seance::séance
:C:secratary::secretary
:C:sectino::section
:C:seh::she
:C:selectoin::selection
:C:sentance::sentence
:C:separeate::separate
:C:seperate::separate
:C:sercumstances::circumstances
:C:shcool::school
:C:she;ll::she'll
:C:shesaid::she said
:C:shineing::shining
:C:shiped::shipped
:C:shoudl::should
:C:shoudln't::shouldn't
:C:should of been::should have been
:C:should of had::should have had
:C:shouldent::shouldn't
:C:shouldn;t::shouldn't
:C:shouldnt::shouldn't
:C:showinf::showing
:C:signifacnt::significant
:C:simalar::similar
:C:similiar::similar
:C:simpyl::simply
:C:sincerly::sincerely
:C:sitll::still
:C:smae::same
:C:smoe::some
:C:soem::some
:C:sohw::show
:C:soical::social
:C:somethign::something
:C:someting::something
:C:somewaht::somewhat
:C:somthing::something
:C:somtimes::sometimes
:C:sot hat::so that
:C:soudn::sound
:C:soudns::sounds
:C:speach::speech
:C:specificaly::specifically
:C:specificalyl::specifically
:C:statment::statement
:C:statments::statements
:C:stnad::stand
:C:stopry::story
:C:stoyr::story
:C:stpo::stop
:C:strentgh::strength
:C:stroy::story
:C:struggel::struggle
:C:strugle::struggle
:C:studnet::student
:C:successfull::successful
:C:successfuly::successfully
:C:successfulyl::successfully
:C:sucess::success
:C:sucessfull::successful
:C:sufficiant::sufficient
:C:suposed::supposed
:C:suppossed::supposed
:C:suprise::surprise
:C:suprised::surprised
:C:swiming::swimming
:C:tahn::than
:C:taht::that
:C:talekd::talked
:C:talkign::talking
:C:tath::that
:C:tecnical::technical
:C:teh::the
:C:tehy::they
:C:tellt he::tell the
:C:termoil::turmoil
:C:tghe::the
:C:tghis::this
:C:thansk::thanks
:C:thats::that's
:C:thatt he::that the
:C:thatthe::that the
:C:thecompany::the company
:C:thefirst::the first
:C:thegovernment::the government
:C:their are::there are
:C:their is::there is
:C:themself::themselves
:C:themselfs::themselves
:C:thenew::the new
:C:there's is::theirs is
:C:theri::their
:C:thesame::the same
:C:thetwo::the two
:C:they're are::there are
:C:they're is::there is
:C:they;l::they'll
:C:they;ll::they'll
:C:they;r::they're
:C:they;re::they're
:C:they;v::they've
:C:they;ve::they've
:C:theyll::they'll
:C:theyve::they've
:C:thgat::that
:C:thge::the
:C:thier::their
:C:thigsn::things
:C:thisyear::this year
:C:thna::than
:C:thne::then
:C:thnig::thing
:C:thnigs::things
:C:threatend::threatened
:C:thsi::this
:C:thsoe::those
:C:thta::that
:C:tihs::this
:C:timne::time
:C:tiogether::together
:C:tje::the
:C:tjhe::the
:C:tkae::take
:C:tkaes::takes
:C:tkaing::taking
:C:tlaking::talking
:C:todya::today
:C:togehter::together
:C:toldt he::told the
:C:tomorow::tomorrow
:C:tongiht::tonight
:C:tonihgt::tonight
:C:tot he::to the
:C:totaly::totally
:C:totalyl::totally
:C:tothe::to the
:C:towrad::toward
:C:traditionalyl::traditionally
:C:transfered::transferred
:C:truely::truly
:C:truley::truly
:C:tryed::tried
:C:tthe::the
:C:tyhat::that
:C:tyhe::the
:C:udnerstand::understand
:C:understnad::understand
:C:undert he::under the
:C:UnitedStates::United States
:C:unliek::unlike
:C:unpleasently::unpleasantly
:C:untilll::until
:C:useing::using
:C:usualyl::usually
:C:veyr::very
:C:virtualyl::virtually
:C:vis-a-vis::vis-à-vis
:C:vrey::very
:C:vulnerible::vulnerable
:C:wa snot::was not
:C:waht::what
:C:warrent::warrant
:C:wasnt::wasn't
:C:watn::want
:C:we;d::we'd
:C:we;ll::we'll
:C:we;re::we're
:C:we;ve::we've
:C:wehn::when
:C:wern't::weren't
:C:werre::were
:C:what;s::what's
:C:whcih::which
:C:whent he::when the
:C:where;s::where's
:C:wherre::where
:C:whic::which
:C:whicht he::which the
:C:whihc::which
:C:who;s::who's
:C:who;ve::who've
:C:whta::what
:C:wief::wife
:C:wierd::weird
:C:wihch::which
:C:wiht::with
:C:will of been::will have been
:C:will of had::will have had
:C:willbe::will be
:C:windoes::windows
:C:witha::with a
:C:withe::with
:C:witht he::with the
:C:withthe::with the
:C:wiull::will
:C:wnat::want
:C:wnated::wanted
:C:wnats::wants
:C:wo'nt::won't
:C:woh::who
:C:wohle::whole
:C:wokr::work
:C:won;t::won't
:C:woudl::would
:C:woudln't::wouldn't
:C:would of been::would have been
:C:would of had::would have had
:C:wouldbe::would be
:C:wouldn;t::wouldn't
:C:wouldnt::wouldn't
:C:wriet::write
:C:writting::writing
:C:wrod::word
:C:wroet::wrote
:C:wrteo::wrote
:C:worte::wrote
:C:wprte::wrote
:C:wroking::working
:C:wtih::with
:C:wuould::would
:C:wya::way
:C:yera::year
:C:yeras::years
:C:yersa::years
:C:yoiu::you
:C:you're own::your own
:C:you;d::you'd
:C:you;re::you're
:C:youare::you are
:C:your a::you're a
:C:your an::you're an
:C:your her::you're her
:C:your here::you're here
:C:your his::you're his
:C:your my::you're my
:C:your the::you're the
:C:your their::you're their
:C:your your::you're your
:C:youve::you've
:C:ytou::you
:C:yuo::you
:C:yuor::your
}
