.class Lorg/telegram/khalkhaloka/Idfinder$5;
.super Ljava/lang/Object;
.source "Idfinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/khalkhaloka/Idfinder;->checkUserName(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/khalkhaloka/Idfinder;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/khalkhaloka/Idfinder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/khalkhaloka/Idfinder$5;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    iput-object p2, p0, Lorg/telegram/khalkhaloka/Idfinder$5;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;-><init>()V

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Idfinder$5;->val$name:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;->username:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/khalkhaloka/Idfinder$5;->this$0:Lorg/telegram/khalkhaloka/Idfinder;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/khalkhaloka/Idfinder$5$1;

    invoke-direct {v3, p0}, Lorg/telegram/khalkhaloka/Idfinder$5$1;-><init>(Lorg/telegram/khalkhaloka/Idfinder$5;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    #setter for: Lorg/telegram/khalkhaloka/Idfinder;->checkReqId:I
    invoke-static {v1, v2}, Lorg/telegram/khalkhaloka/Idfinder;->access$302(Lorg/telegram/khalkhaloka/Idfinder;I)I

    return-void
.end method
