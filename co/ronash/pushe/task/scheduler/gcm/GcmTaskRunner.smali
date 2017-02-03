.class public Lco/ronash/pushe/task/scheduler/gcm/GcmTaskRunner;
.super Lcom/google/android/gms/gcm/GcmTaskService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmTaskService;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunTask(Lcom/google/android/gms/gcm/TaskParams;)I
    .locals 2

    invoke-static {p0}, Lco/ronash/pushe/log/g;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lco/ronash/pushe/log/b;->b(Landroid/content/Context;)V

    invoke-static {p0}, Lco/ronash/pushe/task/d;->a(Landroid/content/Context;)Lco/ronash/pushe/task/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/gcm/TaskParams;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/ronash/pushe/task/d;->b(Ljava/lang/String;)Lco/ronash/pushe/task/c;

    move-result-object v0

    sget-object v1, Lco/ronash/pushe/task/scheduler/gcm/a;->a:[I

    invoke-virtual {v0}, Lco/ronash/pushe/task/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
