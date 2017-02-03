.class Lorg/telegram/messenger/MessagesController$3;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->updateConfig(Lorg/telegram/tgnet/TLRPC$TL_config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$config:Lorg/telegram/tgnet/TLRPC$TL_config;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLRPC$TL_config;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_config;->megagroup_size_max:I

    iput v7, v6, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_size_max:I

    iput v7, v6, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_config;->chat_big_size:I

    iput v7, v6, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_config;->disabled_features:Ljava/util/ArrayList;

    #setter for: Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;
    invoke-static {v6, v7}, Lorg/telegram/messenger/MessagesController;->access$202(Lorg/telegram/messenger/MessagesController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_config;->edit_time_limit:I

    iput v7, v6, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_config;->rating_e_decay:I

    iput v7, v6, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_config;->saved_gifs_limit:I

    iput v7, v6, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->val$config:Lorg/telegram/tgnet/TLRPC$TL_config;

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_config;->stickers_recent_limit:I

    iput v7, v6, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "mainconfig"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v6, "maxGroupCount"

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->maxGroupCount:I

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "maxMegagroupCount"

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "groupBigSize"

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->groupBigSize:I

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "maxEditTime"

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->maxEditTime:I

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "ratingDecay"

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->ratingDecay:I

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "maxRecentGifsCount"

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->maxRecentGifsCount:I

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "maxRecentStickersCount"

    iget-object v7, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->maxRecentStickersCount:I

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :try_start_0
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    #getter for: Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->access$200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/telegram/tgnet/SerializedData;->writeInt32(I)V

    iget-object v6, p0, Lorg/telegram/messenger/MessagesController$3;->this$0:Lorg/telegram/messenger/MessagesController;

    #getter for: Lorg/telegram/messenger/MessagesController;->disabledFeatures:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->access$200(Lorg/telegram/messenger/MessagesController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;

    invoke-virtual {v1, v0}, Lorg/telegram/tgnet/TLRPC$TL_disabledFeature;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "disabledFeatures"

    invoke-interface {v3, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v6, "tmessages"

    invoke-static {v6, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "disabledFeatures"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
