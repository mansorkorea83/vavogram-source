.class Lorg/telegram/messenger/query/StickersQuery$23$3;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/query/StickersQuery$23;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/query/StickersQuery$23;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/StickersQuery$23$3;->this$0:Lorg/telegram/messenger/query/StickersQuery$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->access$2700()[I

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/query/StickersQuery$23$3;->this$0:Lorg/telegram/messenger/query/StickersQuery$23;

    iget v1, v1, Lorg/telegram/messenger/query/StickersQuery$23;->val$type:I

    iget-object v2, p0, Lorg/telegram/messenger/query/StickersQuery$23$3;->this$0:Lorg/telegram/messenger/query/StickersQuery$23;

    iget v2, v2, Lorg/telegram/messenger/query/StickersQuery$23;->val$date:I

    aput v2, v0, v1

    return-void
.end method
