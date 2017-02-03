.class public Lorg/telegram/khalkhaloka/Idfinder;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "Idfinder.java"


# static fields
.field private static final done_button:I = 0x1


# instance fields
.field private checkReqId:I

.field private checkRunnable:Ljava/lang/Runnable;

.field private checkTextView:Landroid/widget/TextView;

.field private doneButton:Landroid/view/View;

.field private firstNameField:Landroid/widget/EditText;

.field private lastCheckName:Ljava/lang/String;

.field private lastNameAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    iput v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkReqId:I

    iput-object v1, p0, Lorg/telegram/khalkhaloka/Idfinder;->lastCheckName:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkRunnable:Ljava/lang/Runnable;

    iput-boolean v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->lastNameAvailable:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/khalkhaloka/Idfinder;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/khalkhaloka/Idfinder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->doneButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/khalkhaloka/Idfinder;Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/telegram/khalkhaloka/Idfinder;->checkUserName(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/khalkhaloka/Idfinder;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkReqId:I

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/khalkhaloka/Idfinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->lastCheckName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/khalkhaloka/Idfinder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/khalkhaloka/Idfinder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/khalkhaloka/Idfinder;->lastNameAvailable:Z

    return p1
.end method

.method private checkUserName(Ljava/lang/String;Z)Z
    .locals 10

    const/16 v9, 0x30

    const v8, 0x7f080490

    const/4 v3, 0x1

    const v7, -0x30cfd0

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    :goto_1
    return v3

    :cond_1
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkRunnable:Ljava/lang/Runnable;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkRunnable:Ljava/lang/Runnable;

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/khalkhaloka/Idfinder;->lastCheckName:Ljava/lang/String;

    iget v5, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkReqId:I

    if-eqz v5, :cond_3

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    iget v6, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkReqId:I

    invoke-virtual {v5, v6, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_3
    iput-boolean v4, p0, Lorg/telegram/khalkhaloka/Idfinder;->lastNameAvailable:Z

    if-eqz p1, :cond_d

    const-string/jumbo v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iget-object v3, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalid"

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    move v3, v4

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_d

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v0, :cond_7

    if-lt v1, v9, :cond_7

    const/16 v5, 0x39

    if-gt v1, v5, :cond_7

    if-eqz p2, :cond_6

    const-string/jumbo v3, "UsernameInvalidStartNumber"

    const v5, 0x7f080493

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/khalkhaloka/Idfinder;->showErrorAlert(Ljava/lang/String;)V

    :goto_3
    move v3, v4

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalidStartNumber"

    const v6, 0x7f080493

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_7
    if-lt v1, v9, :cond_8

    const/16 v5, 0x39

    if-le v1, v5, :cond_c

    :cond_8
    const/16 v5, 0x61

    if-lt v1, v5, :cond_9

    const/16 v5, 0x7a

    if-le v1, v5, :cond_c

    :cond_9
    const/16 v5, 0x41

    if-lt v1, v5, :cond_a

    const/16 v5, 0x5a

    if-le v1, v5, :cond_c

    :cond_a
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_c

    if-eqz p2, :cond_b

    const-string/jumbo v3, "UsernameInvalid"

    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/khalkhaloka/Idfinder;->showErrorAlert(Ljava/lang/String;)V

    :goto_4
    move v3, v4

    goto/16 :goto_1

    :cond_b
    iget-object v3, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalid"

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_10

    :cond_e
    if-eqz p2, :cond_f

    const-string/jumbo v3, "UsernameInvalidShort"

    const v5, 0x7f080492

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/khalkhaloka/Idfinder;->showErrorAlert(Ljava/lang/String;)V

    :goto_5
    move v3, v4

    goto/16 :goto_1

    :cond_f
    iget-object v3, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalidShort"

    const v6, 0x7f080492

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-le v5, v6, :cond_12

    if-eqz p2, :cond_11

    const-string/jumbo v3, "UsernameInvalidLong"

    const v5, 0x7f080491

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/khalkhaloka/Idfinder;->showErrorAlert(Ljava/lang/String;)V

    :goto_6
    move v3, v4

    goto/16 :goto_1

    :cond_11
    iget-object v3, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameInvalidLong"

    const v6, 0x7f080491

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    :cond_12
    if-nez p2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-nez v2, :cond_13

    const-string/jumbo v2, ""

    :cond_13
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v6, "UsernameAvailable"

    const v7, 0x7f08048b

    new-array v8, v3, [Ljava/lang/Object;

    aput-object p1, v8, v4

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    const v5, -0xd968d4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    :cond_14
    iget-object v4, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "UsernameChecking"

    const v6, 0x7f08048c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    const v5, -0x92928e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Idfinder;->lastCheckName:Ljava/lang/String;

    new-instance v4, Lorg/telegram/khalkhaloka/Idfinder$5;

    invoke-direct {v4, p0, p1}, Lorg/telegram/khalkhaloka/Idfinder$5;-><init>(Lorg/telegram/khalkhaloka/Idfinder;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-static {v4, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_1
.end method

.method private showErrorAlert(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Idfinder;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Idfinder;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "AppName"

    const v2, 0x7f080081

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "ErrorOccurred"

    const v2, 0x7f0801b7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_2
    const-string/jumbo v1, "OK"

    const v2, 0x7f08035c

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/khalkhaloka/Idfinder;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "USERNAME_INVALID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "USERNAME_OCCUPIED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "USERNAMES_UNAVAILABLE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_0
    const-string/jumbo v1, "UsernameInvalid"

    const v2, 0x7f080490

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :pswitch_1
    const-string/jumbo v1, "UsernameInUse"

    const v2, 0x7f08048f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :pswitch_2
    const-string/jumbo v1, "FeatureUnavailable"

    const v2, 0x7f0801bc

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x87506d2 -> :sswitch_2
        0x1137676e -> :sswitch_0
        0x1fc79be7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Username"

    const v2, 0x7f08050d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/khalkhaloka/Idfinder$1;

    invoke-direct {v1, p0}, Lorg/telegram/khalkhaloka/Idfinder$1;-><init>(Lorg/telegram/khalkhaloka/Idfinder;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v8

    const/4 v0, 0x1

    const v1, 0x7f020167

    const/high16 v2, 0x4260

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(III)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->doneButton:Landroid/view/View;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    if-nez v9, :cond_0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->fragmentView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->fragmentView:Landroid/view/View;

    new-instance v1, Lorg/telegram/khalkhaloka/Idfinder$2;

    invoke-direct {v1, p0}, Lorg/telegram/khalkhaloka/Idfinder$2;-><init>(Lorg/telegram/khalkhaloka/Idfinder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x4190

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    const v1, -0x686869

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    const v1, 0x2c000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    const-string/jumbo v1, "UsernamePlaceholder"

    const v2, 0x7f080494

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/khalkhaloka/Idfinder$3;

    invoke-direct {v1, p0}, Lorg/telegram/khalkhaloka/Idfinder$3;-><init>(Lorg/telegram/khalkhaloka/Idfinder;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->fragmentView:Landroid/view/View;

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/high16 v2, 0x41c0

    const/high16 v3, 0x41c0

    const/high16 v4, 0x41c0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v9, :cond_1

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->fragmentView:Landroid/view/View;

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    :goto_2
    const/16 v3, 0x18

    const/16 v4, 0xc

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    const/high16 v1, 0x4170

    invoke-virtual {v7, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, -0x92928e

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    :goto_3
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    const-string/jumbo v0, "UsernameHelp"

    const v1, 0x7f08050f

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->fragmentView:Landroid/view/View;

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    :goto_4
    const/16 v3, 0x18

    const/16 v4, 0xa

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/khalkhaloka/Idfinder$4;

    invoke-direct {v1, p0}, Lorg/telegram/khalkhaloka/Idfinder$4;-><init>(Lorg/telegram/khalkhaloka/Idfinder;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->checkTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->fragmentView:Landroid/view/View;

    return-object v0

    :cond_2
    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    goto :goto_2

    :cond_5
    const/4 v0, 0x3

    goto :goto_3

    :cond_6
    const/4 v2, 0x3

    goto :goto_4
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "view_animations"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v2, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lorg/telegram/khalkhaloka/Idfinder;->firstNameField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
