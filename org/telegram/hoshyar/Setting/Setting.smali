.class public Lorg/telegram/hoshyar/Setting/Setting;
.super Ljava/lang/Object;
.source "Setting.java"


# static fields
.field private static final PREF_NAME:Ljava/lang/String; = "Stors"

.field static PRIVATE_MODE:I

.field static _context:Landroid/content/Context;

.field static editor:Landroid/content/SharedPreferences$Editor;

.field static pref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/telegram/hoshyar/Setting/Setting;->PRIVATE_MODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddToChannel()Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "AddToChannel"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getAnsweringMachine()Z
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "answeringmachine"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getAnsweringmachineText()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "answeringmachineanswer"

    const-string/jumbo v2, "AnsweringmachineDefaulttext"

    const v3, 0x7f080080

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBooleanCharacter()Ljava/lang/Boolean;
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "setbooleanch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getChName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "ChName"

    const-string/jumbo v2, "d"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelCountUnread()I
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "ChannelCountUnread"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getConSticker()I
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "ConSticker"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getConVocie()I
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "ConVocie"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCustomTheme()I
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "customTheme"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDatePersian()Z
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "dateispersian"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getFavorList()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "favors"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFont()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "font_select"

    const-string/jumbo v2, "8"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFont1()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "font_select_dialogCell"

    const-string/jumbo v2, "8"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFrw()Z
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "Frw"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getGhostMode()Z
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "ghostmode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getHiddenList()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "hidden"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginCount()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "setcountlogin"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotifi()Z
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "notifi"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPass()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pass"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecurityList()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "security"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSendTyping()Z
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sendtype"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getShowTimeAgo()Z
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "showtimeago"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSpaceCharacter()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "setspacecharachter"

    const-string/jumbo v2, "\u2764"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTabletMode()Z
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "tabletmode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getTheme()I
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "themeid"

    const/16 v2, 0x13

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getVoicech()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "voice_ch"

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWrite()I
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "nicewrite"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isfirsttime()Z
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "isfirsttime"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setAddToChannel(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "AddToChannel"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setAnsweringMachine(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "answeringmachine"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setAnsweringmachineText(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "answeringmachineanswer"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setBooleanCharacter(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "setbooleanch"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setChName(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "ChName"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setChannelCountUnread(I)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "ChannelCountUnread"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setConSticker(I)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "ConSticker"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setConVocie(I)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "ConVocie"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setCustomTheme(I)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "customTheme"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDatePersian(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "dateispersian"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setFavorList(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "favors"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setFont(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "font_select"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setFont1(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "font_select_dialogCell"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setFrw(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "Frw"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setGhostMode(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "ghostmode"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setHiddenList(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "hidden"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setLoginCount(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "setcountlogin"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setNotifi(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "notifi"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setPass(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "pass"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setRemoveList(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "favors"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setSecurityList(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "security"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setSendTyping(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "sendtype"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setShowTimeAgo(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "showtimeago"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setSpaceCharacter(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "setspacecharachter"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setTabletMode(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "tabletmode"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setTheme(I)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "themeid"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setVoicech(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "voice_ch"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setWrite(I)V
    .locals 2

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "nicewrite"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setisfirsttime(Ljava/lang/Boolean;)V
    .locals 3

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->setupSetting()V

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "isfirsttime"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static setupSetting()V
    .locals 3

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sput-object v0, Lorg/telegram/hoshyar/Setting/Setting;->_context:Landroid/content/Context;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->_context:Landroid/content/Context;

    const-string/jumbo v1, "Stors"

    sget v2, Lorg/telegram/hoshyar/Setting/Setting;->PRIVATE_MODE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    sget-object v0, Lorg/telegram/hoshyar/Setting/Setting;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lorg/telegram/hoshyar/Setting/Setting;->editor:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method
