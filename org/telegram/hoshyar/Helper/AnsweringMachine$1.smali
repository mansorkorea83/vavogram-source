.class final Lorg/telegram/hoshyar/Helper/AnsweringMachine$1;
.super Ljava/lang/Object;
.source "AnsweringMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/hoshyar/Helper/AnsweringMachine;->ProcessMsgs(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$m:Lorg/telegram/messenger/MessageObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/hoshyar/Helper/AnsweringMachine$1;->val$m:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "ProcessMsgs"

    const-string/jumbo v1, "proccess"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/telegram/hoshyar/Helper/AnsweringMachine$1;->val$m:Lorg/telegram/messenger/MessageObject;

    invoke-static {v0}, Lorg/telegram/hoshyar/Helper/AnsweringMachine;->ProcessMsg(Lorg/telegram/messenger/MessageObject;)Z

    return-void
.end method
