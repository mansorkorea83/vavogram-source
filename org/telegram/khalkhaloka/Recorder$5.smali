.class Lorg/telegram/khalkhaloka/Recorder$5;
.super Ljava/lang/Object;
.source "Recorder.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Recorder;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Recorder;

.field final synthetic val$rd:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Recorder;Landroid/widget/RadioGroup;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Recorder$5;->this$0:Lorg/telegram/khalkhaloka/Recorder;

    iput-object p2, p0, Lorg/telegram/khalkhaloka/Recorder$5;->val$rd:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    iget-object v2, p0, Lorg/telegram/khalkhaloka/Recorder$5;->val$rd:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/khalkhaloka/Recorder$5;->val$rd:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string/jumbo v2, "1"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setVoicech(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string/jumbo v2, "2"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setVoicech(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const-string/jumbo v2, "3"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setVoicech(Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    const-string/jumbo v2, "4"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setVoicech(Ljava/lang/String;)V

    :cond_3
    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    const-string/jumbo v2, "5"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setVoicech(Ljava/lang/String;)V

    :cond_4
    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    const-string/jumbo v2, "6"

    invoke-static {v2}, Lorg/telegram/hoshyar/Setting/Setting;->setVoicech(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
