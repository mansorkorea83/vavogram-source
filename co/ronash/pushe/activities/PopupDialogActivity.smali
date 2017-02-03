.class public Lco/ronash/pushe/activities/PopupDialogActivity;
.super Landroid/app/Activity;


# static fields
.field private static a:Z


# instance fields
.field private b:Lco/ronash/pushe/k/l;

.field private c:Landroid/app/AlertDialog;

.field private d:Z

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lco/ronash/pushe/activities/PopupDialogActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->c:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/activities/PopupDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->c:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Lco/ronash/pushe/activities/PopupDialogActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->e:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->b:Lco/ronash/pushe/k/l;

    return-object v0
.end method

.method static synthetic a(Lco/ronash/pushe/activities/PopupDialogActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lco/ronash/pushe/a/a;)V
    .locals 2

    invoke-virtual {p0}, Lco/ronash/pushe/activities/PopupDialogActivity;->finish()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/activities/f;

    invoke-direct {v1, p0, p2}, Lco/ronash/pushe/activities/f;-><init>(Lco/ronash/pushe/activities/PopupDialogActivity;Lco/ronash/pushe/a/a;)V

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/activities/PopupDialogActivity;Landroid/content/Context;Lco/ronash/pushe/a/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Landroid/content/Context;Lco/ronash/pushe/a/a;)V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lco/ronash/pushe/activities/PopupDialogActivity;->a:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lco/ronash/pushe/activities/PopupDialogActivity;->a:Z

    return v0
.end method

.method static synthetic a(Lco/ronash/pushe/activities/PopupDialogActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->d:Z

    return p1
.end method

.method static synthetic b(Lco/ronash/pushe/activities/PopupDialogActivity;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->f:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic b(Lco/ronash/pushe/activities/PopupDialogActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->h:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->d:Z

    invoke-static {p0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    new-instance v1, Lco/ronash/pushe/activities/a;

    invoke-direct {v1, p0, p0}, Lco/ronash/pushe/activities/a;-><init>(Lco/ronash/pushe/activities/PopupDialogActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->a(Lco/ronash/pushe/task/a;)V

    return-void
.end method

.method static synthetic b(Lco/ronash/pushe/activities/PopupDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/activities/PopupDialogActivity;->c()V

    return-void
.end method

.method static synthetic c(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->c:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private c()V
    .locals 6

    iget-boolean v0, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lco/ronash/pushe/k/l;

    invoke-direct {v2}, Lco/ronash/pushe/k/l;-><init>()V

    iget-object v3, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "orig_msg_id"

    iget-object v1, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->b:Lco/ronash/pushe/k/l;

    const-string/jumbo v3, "orig_msg_id"

    invoke-virtual {v1, v3}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lco/ronash/pushe/i/e;->a(Landroid/content/Context;)Lco/ronash/pushe/i/e;

    move-result-object v0

    const-string/jumbo v1, "t22"

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/i/e;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lco/ronash/pushe/activities/PopupDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lco/ronash/pushe/activities/PopupDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/ronash/pushe/activities/PopupDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/k/m;->a(Landroid/os/Bundle;)Lco/ronash/pushe/k/l;

    move-result-object v0

    iput-object v0, p0, Lco/ronash/pushe/activities/PopupDialogActivity;->b:Lco/ronash/pushe/k/l;

    const-string/jumbo v0, "co.ronash.pushe.OPEN_DIALOG"

    invoke-virtual {p0}, Lco/ronash/pushe/activities/PopupDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lco/ronash/pushe/activities/PopupDialogActivity;->b()V

    :cond_0
    return-void
.end method
