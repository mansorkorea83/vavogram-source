.class public Lco/ronash/pushe/h/a/n;
.super Lco/ronash/pushe/h/a/i;


# static fields
.field public static final a:Lco/ronash/pushe/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lco/ronash/pushe/a/c;->b:Lco/ronash/pushe/a/c;

    sput-object v0, Lco/ronash/pushe/h/a/n;->a:Lco/ronash/pushe/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lco/ronash/pushe/h/a/i;-><init>()V

    return-void
.end method

.method static synthetic a(Lco/ronash/pushe/k/l;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;
    .locals 1

    invoke-static {p0, p1}, Lco/ronash/pushe/h/a/n;->b(Lco/ronash/pushe/k/l;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lco/ronash/pushe/k/d;)Lco/ronash/pushe/k/d;
    .locals 6

    new-instance v1, Lco/ronash/pushe/k/d;

    invoke-direct {v1}, Lco/ronash/pushe/k/d;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lco/ronash/pushe/k/d;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lco/ronash/pushe/k/d;->b(I)Lco/ronash/pushe/k/l;

    move-result-object v2

    const-string/jumbo v3, "btn_action"

    invoke-virtual {v2, v3}, Lco/ronash/pushe/k/l;->e(Ljava/lang/String;)Lco/ronash/pushe/k/l;

    move-result-object v3

    const-string/jumbo v4, "action_type"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lco/ronash/pushe/a/c;->a(Ljava/lang/String;)Lco/ronash/pushe/a/c;

    move-result-object v3

    sget-object v4, Lco/ronash/pushe/a/c;->d:Lco/ronash/pushe/a/c;

    if-eq v3, v4, :cond_0

    invoke-virtual {v1, v2}, Lco/ronash/pushe/k/d;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static b(Lco/ronash/pushe/k/l;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "action_type"

    invoke-virtual {p0, v1, v0}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/a/c;->a(Ljava/lang/String;)Lco/ronash/pushe/a/c;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lco/ronash/pushe/h/a/n;->a:Lco/ronash/pushe/a/c;

    :cond_1
    invoke-virtual {v0}, Lco/ronash/pushe/a/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "title"

    const-string/jumbo v2, "title"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "big_title"

    const-string/jumbo v2, "big_title"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "content"

    const-string/jumbo v2, "content"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "big_content"

    const-string/jumbo v2, "big_content"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "summary"

    const-string/jumbo v2, "summary"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "image"

    const-string/jumbo v2, "image"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "icon"

    const-string/jumbo v2, "icon"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "big_icon"

    const-string/jumbo v2, "big_icon"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "dialog_in1"

    const-string/jumbo v2, "dialog_in1"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "dialog_in2"

    const-string/jumbo v2, "dialog_in2"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "orig_msg_id"

    const-string/jumbo v2, "message_id"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lco/ronash/pushe/a/c;->d:Lco/ronash/pushe/a/c;

    if-ne v0, v1, :cond_3

    const-string/jumbo v1, "buttons"

    const-string/jumbo v2, "buttons"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v2

    invoke-static {v2}, Lco/ronash/pushe/h/a/n;->a(Lco/ronash/pushe/k/d;)Lco/ronash/pushe/k/d;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lco/ronash/pushe/a/c;->b()Lco/ronash/pushe/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lco/ronash/pushe/a/b;->a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v1, "buttons"

    const-string/jumbo v2, "buttons"

    invoke-virtual {p1, v2}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;Lco/ronash/pushe/k/d;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lco/ronash/pushe/k/l;)Lco/ronash/pushe/h/a/g;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lco/ronash/pushe/h/a/l;

    invoke-direct {v0}, Lco/ronash/pushe/h/a/l;-><init>()V

    invoke-virtual {p0, v0, p1}, Lco/ronash/pushe/h/a/n;->a(Lco/ronash/pushe/h/a/g;Lco/ronash/pushe/k/l;)V

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->b(Ljava/lang/String;)V

    const-string/jumbo v1, "content"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->c(Ljava/lang/String;)V

    const-string/jumbo v1, "big_title"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->d(Ljava/lang/String;)V

    const-string/jumbo v1, "big_content"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->e(Ljava/lang/String;)V

    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->e(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    const-string/jumbo v1, "priority"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "image"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->g(Ljava/lang/String;)V

    const-string/jumbo v1, "icon"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->h(Ljava/lang/String;)V

    const-string/jumbo v1, "big_icon"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->i(Ljava/lang/String;)V

    const-string/jumbo v1, "use_pushe_mini_icon"

    const-string/jumbo v2, "false"

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->b(Z)V

    const-string/jumbo v1, "action"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-static {v1, p1}, Lco/ronash/pushe/h/a/n;->b(Lco/ronash/pushe/k/l;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->a(Lco/ronash/pushe/a/a;)V

    :try_start_1
    const-string/jumbo v1, "led_color"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->b(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string/jumbo v1, "led_off"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->c(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string/jumbo v1, "led_on"

    invoke-virtual {p1, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->d(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    const-string/jumbo v1, "wake_screen"

    const-string/jumbo v2, "false"

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->c(Z)V

    const-string/jumbo v1, "ticker"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->j(Ljava/lang/String;)V

    const-string/jumbo v1, "custom_content"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Lco/ronash/pushe/k/l;)Lco/ronash/pushe/k/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->a(Lco/ronash/pushe/k/l;)V

    const-string/jumbo v1, "show_app"

    const-string/jumbo v2, "true"

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->d(Z)V

    const-string/jumbo v1, "notif_icon"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->m(Ljava/lang/String;)V

    const-string/jumbo v1, "permanent"

    const-string/jumbo v2, "false"

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->e(Z)V

    const-string/jumbo v1, "bg_url"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->l(Ljava/lang/String;)V

    const-string/jumbo v1, "buttons"

    invoke-virtual {p1, v1, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Lco/ronash/pushe/k/d;)Lco/ronash/pushe/k/d;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lco/ronash/pushe/h/a/p;

    invoke-direct {v2}, Lco/ronash/pushe/h/a/p;-><init>()V

    invoke-virtual {v2, p1, v1}, Lco/ronash/pushe/h/a/p;->a(Lco/ronash/pushe/k/l;Lco/ronash/pushe/k/d;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/l;->m()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lco/ronash/pushe/h/a/o;

    invoke-direct {v2, p0}, Lco/ronash/pushe/h/a/o;-><init>(Lco/ronash/pushe/h/a/n;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    const-string/jumbo v1, "sound_url"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->k(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->a(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->b(I)V

    goto/16 :goto_1

    :catch_2
    move-exception v1

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->b(I)V

    goto/16 :goto_2

    :catch_3
    move-exception v1

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lco/ronash/pushe/h/a/l;->b(I)V

    goto/16 :goto_3
.end method
