.class public Lorg/telegram/messenger/DialogsLoader;
.super Ljava/lang/Object;
.source "DialogsLoader.java"


# static fields
.field public static tabint:I


# instance fields
.field allDialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field catId:I

.field chatUnlocked:Z

.field defaulTab:I

.field isTabsEnabled:Z

.field preferences:Landroid/content/SharedPreferences;

.field selectedTab:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lorg/telegram/messenger/DialogsLoader;->tabint:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, -0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "turboconfig"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "chat_unlocked"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/messenger/DialogsLoader;->chatUnlocked:Z

    iget-object v3, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "tabs"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/messenger/DialogsLoader;->isTabsEnabled:Z

    iget-object v3, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "defaul_tab"

    const/4 v5, 0x5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/DialogsLoader;->defaulTab:I

    iget-object v3, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "selected_tab"

    iget v5, p0, Lorg/telegram/messenger/DialogsLoader;->defaulTab:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/DialogsLoader;->selectedTab:I

    iget-object v3, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "current_cat"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/telegram/messenger/DialogsLoader;->catId:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget v3, p0, Lorg/telegram/messenger/DialogsLoader;->catId:I

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    sget-object v4, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void

    :cond_1
    iget v3, p0, Lorg/telegram/messenger/DialogsLoader;->catId:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    sget-object v3, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    sget-object v3, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-lez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Lorg/telegram/messenger/DialogsLoader;->catId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    sget-object v3, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    sget-object v3, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget v3, p0, Lorg/telegram/messenger/DialogsLoader;->catId:I

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    sget-object v3, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    sget-object v3, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v3, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getDialogsArray()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v9, p0, Lorg/telegram/messenger/DialogsLoader;->chatUnlocked:Z

    if-eqz v9, :cond_17

    iget-boolean v9, p0, Lorg/telegram/messenger/DialogsLoader;->isTabsEnabled:Z

    if-nez v9, :cond_1

    const/4 v4, 0x0

    :goto_0
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget v9, Lorg/telegram/messenger/DialogsLoader;->tabint:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_3

    const/4 v4, 0x0

    :goto_1
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget v9, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-lez v9, :cond_2

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    sget v9, Lorg/telegram/messenger/DialogsLoader;->tabint:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_5

    const/4 v4, 0x0

    :goto_2
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    sget v9, Lorg/telegram/messenger/DialogsLoader;->tabint:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_7

    const/4 v4, 0x0

    :goto_3
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fav_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    sget v9, Lorg/telegram/messenger/DialogsLoader;->tabint:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_b

    const/4 v4, 0x0

    :goto_4
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v7, v10

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v9, 0x20

    shr-long/2addr v10, v9

    long-to-int v3, v10

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v9

    if-nez v9, :cond_8

    if-gez v7, :cond_9

    const/4 v9, 0x1

    if-eq v3, v9, :cond_9

    const/4 v6, 0x1

    :goto_5
    const/4 v8, 0x0

    if-nez v6, :cond_8

    if-lez v7, :cond_8

    const/4 v9, 0x1

    if-eq v3, v9, :cond_8

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v9, :cond_a

    const/4 v5, 0x1

    :goto_6
    if-nez v5, :cond_8

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    goto :goto_6

    :cond_b
    sget v9, Lorg/telegram/messenger/DialogsLoader;->tabint:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_e

    const/4 v4, 0x0

    :goto_7
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v7, v10

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v9, 0x20

    shr-long/2addr v10, v9

    long-to-int v3, v10

    if-gez v7, :cond_d

    const/4 v9, 0x1

    if-eq v3, v9, :cond_d

    const/4 v6, 0x1

    :goto_8
    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v9

    if-nez v9, :cond_c

    if-eqz v6, :cond_c

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    goto :goto_8

    :cond_e
    sget v9, Lorg/telegram/messenger/DialogsLoader;->tabint:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_10

    const/4 v4, 0x0

    :goto_9
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v7, v10

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    neg-int v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v9, :cond_f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_10
    sget v9, Lorg/telegram/messenger/DialogsLoader;->tabint:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    const/4 v4, 0x0

    :goto_a
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v7, v10

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    neg-int v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v9, :cond_11

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_12
    sget v9, Lorg/telegram/messenger/DialogsLoader;->tabint:I

    if-nez v9, :cond_2f

    const/4 v4, 0x0

    :goto_b
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v7, v10

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v9, 0x20

    shr-long/2addr v10, v9

    long-to-int v3, v10

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v9

    if-nez v9, :cond_14

    if-gez v7, :cond_15

    const/4 v9, 0x1

    if-eq v3, v9, :cond_15

    const/4 v6, 0x1

    :goto_c
    const/4 v8, 0x0

    if-nez v6, :cond_13

    if-lez v7, :cond_13

    const/4 v9, 0x1

    if-eq v3, v9, :cond_13

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    :cond_13
    if-eqz v8, :cond_16

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v9, :cond_16

    const/4 v5, 0x1

    :goto_d
    if-eqz v5, :cond_14

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_15
    const/4 v6, 0x0

    goto :goto_c

    :cond_16
    const/4 v5, 0x0

    goto :goto_d

    :cond_17
    iget-boolean v9, p0, Lorg/telegram/messenger/DialogsLoader;->isTabsEnabled:Z

    if-nez v9, :cond_19

    const/4 v4, 0x0

    :goto_e
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_18

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_19
    iget v9, p0, Lorg/telegram/messenger/DialogsLoader;->selectedTab:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_1b

    const/4 v4, 0x0

    :goto_f
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1a

    iget v9, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    if-lez v9, :cond_1a

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1b
    iget v9, p0, Lorg/telegram/messenger/DialogsLoader;->selectedTab:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_1d

    const/4 v4, 0x0

    :goto_10
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1c

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1d
    iget v9, p0, Lorg/telegram/messenger/DialogsLoader;->selectedTab:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_1f

    const/4 v4, 0x0

    :goto_11
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1e

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fav_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1f
    iget v9, p0, Lorg/telegram/messenger/DialogsLoader;->selectedTab:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_23

    const/4 v4, 0x0

    :goto_12
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_20

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v7, v10

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v9, 0x20

    shr-long/2addr v10, v9

    long-to-int v3, v10

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v9

    if-nez v9, :cond_20

    if-gez v7, :cond_21

    const/4 v9, 0x1

    if-eq v3, v9, :cond_21

    const/4 v6, 0x1

    :goto_13
    const/4 v8, 0x0

    if-nez v6, :cond_20

    if-lez v7, :cond_20

    const/4 v9, 0x1

    if-eq v3, v9, :cond_20

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    if-eqz v8, :cond_22

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v9, :cond_22

    const/4 v5, 0x1

    :goto_14
    if-nez v5, :cond_20

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_21
    const/4 v6, 0x0

    goto :goto_13

    :cond_22
    const/4 v5, 0x0

    goto :goto_14

    :cond_23
    iget v9, p0, Lorg/telegram/messenger/DialogsLoader;->selectedTab:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_26

    const/4 v4, 0x0

    :goto_15
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_24

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v7, v10

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v9, 0x20

    shr-long/2addr v10, v9

    long-to-int v3, v10

    if-gez v7, :cond_25

    const/4 v9, 0x1

    if-eq v3, v9, :cond_25

    const/4 v6, 0x1

    :goto_16
    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v9

    if-nez v9, :cond_24

    if-eqz v6, :cond_24

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_25
    const/4 v6, 0x0

    goto :goto_16

    :cond_26
    iget v9, p0, Lorg/telegram/messenger/DialogsLoader;->selectedTab:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_28

    const/4 v4, 0x0

    :goto_17
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_27

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v7, v10

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v9

    if-eqz v9, :cond_27

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    neg-int v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v9, :cond_27

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_28
    iget v9, p0, Lorg/telegram/messenger/DialogsLoader;->selectedTab:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2a

    const/4 v4, 0x0

    :goto_18
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_29

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v7, v10

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v9

    if-eqz v9, :cond_29

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    neg-int v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-boolean v9, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v9, :cond_29

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2a
    iget v9, p0, Lorg/telegram/messenger/DialogsLoader;->selectedTab:I

    if-nez v9, :cond_2f

    const/4 v4, 0x0

    :goto_19
    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_2f

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->allDialogs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    iget-object v9, p0, Lorg/telegram/messenger/DialogsLoader;->preferences:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hide_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2c

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    long-to-int v7, v10

    iget-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/16 v9, 0x20

    shr-long/2addr v10, v9

    long-to-int v3, v10

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v9

    if-nez v9, :cond_2c

    if-gez v7, :cond_2d

    const/4 v9, 0x1

    if-eq v3, v9, :cond_2d

    const/4 v6, 0x1

    :goto_1a
    const/4 v8, 0x0

    if-nez v6, :cond_2b

    if-lez v7, :cond_2b

    const/4 v9, 0x1

    if-eq v3, v9, :cond_2b

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    :cond_2b
    if-eqz v8, :cond_2e

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v9, :cond_2e

    const/4 v5, 0x1

    :goto_1b
    if-eqz v5, :cond_2c

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_2d
    const/4 v6, 0x0

    goto :goto_1a

    :cond_2e
    const/4 v5, 0x0

    goto :goto_1b

    :cond_2f
    return-object v2
.end method
