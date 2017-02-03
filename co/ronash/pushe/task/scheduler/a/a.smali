.class Lco/ronash/pushe/task/scheduler/a/a;
.super Lcom/evernote/android/job/a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/evernote/android/job/a;-><init>()V

    iput-object p1, p0, Lco/ronash/pushe/task/scheduler/a/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/evernote/android/job/c;)Lcom/evernote/android/job/d;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lco/ronash/pushe/task/scheduler/a/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lco/ronash/pushe/task/scheduler/a/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/log/b;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lco/ronash/pushe/task/scheduler/a/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/task/scheduler/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->b(Ljava/lang/String;)Lco/ronash/pushe/task/c;

    move-result-object v0

    sget-object v1, Lco/ronash/pushe/task/scheduler/a/b;->a:[I

    invoke-virtual {v0}, Lco/ronash/pushe/task/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/evernote/android/job/d;->b:Lcom/evernote/android/job/d;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/evernote/android/job/d;->a:Lcom/evernote/android/job/d;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/evernote/android/job/d;->b:Lcom/evernote/android/job/d;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/evernote/android/job/d;->c:Lcom/evernote/android/job/d;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
