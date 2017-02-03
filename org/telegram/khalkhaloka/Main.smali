.class public Lorg/telegram/khalkhaloka/Main;
.super Landroid/app/Activity;
.source "Main.java"


# instance fields
.field private allHasU:Z

.field private avatarImage:Lorg/telegram/ui/Components/BackupImageView;

.field private avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

.field private cHasU:Z

.field private chHasU:Z

.field private checkPermission:Z

.field private countAll:Landroid/widget/TextView;

.field private countCh:Landroid/widget/TextView;

.field private countCon:Landroid/widget/TextView;

.field private countG:Landroid/widget/TextView;

.field private countSG:Landroid/widget/TextView;

.field private countUnread:Landroid/widget/TextView;

.field count_login:I

.field private countfav:Landroid/widget/TextView;

.field private favHasU:Z

.field private gHasU:Z

.field ln:Landroid/widget/LinearLayout;

.field prof:Lorg/telegram/khalkhaloka/Khalkhaloka_textview;

.field prof1:Landroid/widget/TextView;

.field private sgHasU:Z

.field private writeButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/khalkhaloka/Main;->checkPermission:Z

    new-instance v0, Lorg/telegram/ui/Components/AvatarUpdater;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarUpdater;-><init>()V

    iput-object v0, p0, Lorg/telegram/khalkhaloka/Main;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/khalkhaloka/Main;->count_login:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/khalkhaloka/Main;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/khalkhaloka/Main;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private appInstalledOrNot(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/khalkhaloka/Main;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateUnreadCount(Ljava/util/ArrayList;)V
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;)V"
        }
    .end annotation

    sget-object v34, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v35, "turboconfig"

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v29

    const-string/jumbo v34, "chat_unlocked"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const-string/jumbo v34, "tabs"

    const/16 v35, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string/jumbo v34, "tabs_only_not_muted"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->chHasU:Z

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->sgHasU:Z

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->gHasU:Z

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->cHasU:Z

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->favHasU:Z

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->allHasU:Z

    const/4 v11, 0x0

    const/16 v31, 0x0

    const/16 v20, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/16 v30, 0x0

    const/16 v19, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x0

    if-eqz v26, :cond_2b

    if-eqz v14, :cond_15

    const/16 v23, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v23

    move/from16 v1, v34

    if-ge v0, v1, :cond_2b

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "hide_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_4

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    if-lez v34, :cond_4

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v27, v0

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v34, v0

    const/16 v36, 0x20

    shr-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v22, v0

    if-eqz v28, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_0

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v4, v4, v34

    add-int/lit8 v5, v5, 0x1

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->allHasU:Z

    :cond_0
    :goto_1
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getFavorList()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_1

    if-eqz v28, :cond_7

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_1

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v16, v16, v34

    add-int/lit8 v17, v17, 0x1

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->favHasU:Z

    :cond_1
    :goto_2
    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v34

    if-nez v34, :cond_2

    if-gez v27, :cond_9

    const/16 v34, 0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_9

    const/16 v25, 0x1

    :goto_3
    const/16 v33, 0x0

    if-nez v25, :cond_2

    if-lez v27, :cond_2

    const/16 v34, 0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v33

    if-eqz v33, :cond_a

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    move/from16 v34, v0

    if-eqz v34, :cond_a

    const/16 v24, 0x1

    :goto_4
    if-nez v24, :cond_2

    if-eqz v28, :cond_b

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_2

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v7, v7, v34

    add-int/lit8 v8, v8, 0x1

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->cHasU:Z

    :cond_2
    :goto_5
    if-gez v27, :cond_d

    const/16 v34, 0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_d

    const/16 v25, 0x1

    :goto_6
    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v34

    if-nez v34, :cond_3

    if-eqz v25, :cond_3

    if-eqz v28, :cond_e

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_3

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v19, v19, v34

    add-int/lit8 v20, v20, 0x1

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->gHasU:Z

    :cond_3
    :goto_7
    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v34

    if-eqz v34, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    if-eqz v28, :cond_11

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_4

    iget-boolean v0, v13, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v34, v0

    if-eqz v34, :cond_10

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v30, v30, v34

    add-int/lit8 v31, v31, 0x1

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->sgHasU:Z

    const-string/jumbo v34, "HOSHYAR_T"

    const-string/jumbo v35, "Channel"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_8
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_6

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->allHasU:Z

    :cond_6
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v4, v4, v34

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_8

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->favHasU:Z

    :cond_8
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v16, v16, v34

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_3

    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_4

    :cond_b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_c

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->cHasU:Z

    :cond_c
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v7, v7, v34

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    :cond_d
    const/16 v25, 0x0

    goto/16 :goto_6

    :cond_e
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_f

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->gHasU:Z

    :cond_f
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v19, v19, v34

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    :cond_10
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v10, v10, v34

    add-int/lit8 v11, v11, 0x1

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->chHasU:Z

    const-string/jumbo v34, "HOSHYAR_T"

    const-string/jumbo v35, "SuperGroup"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_11
    iget-boolean v0, v13, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v34, v0

    if-eqz v34, :cond_13

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_12

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->sgHasU:Z

    :cond_12
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v30, v30, v34

    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_8

    :cond_13
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_14

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->chHasU:Z

    :cond_14
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v10, v10, v34

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    :cond_15
    const/16 v23, 0x0

    :goto_9
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v23

    move/from16 v1, v34

    if-ge v0, v1, :cond_2b

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "hide_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_1a

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    if-lez v34, :cond_1a

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v27, v0

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v34, v0

    const/16 v36, 0x20

    shr-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v22, v0

    if-eqz v28, :cond_1b

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_16

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v4, v4, v34

    add-int/lit8 v5, v5, 0x1

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->allHasU:Z

    :cond_16
    :goto_a
    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getFavorList()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_17

    if-eqz v28, :cond_1d

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_17

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v16, v16, v34

    add-int/lit8 v17, v17, 0x1

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->favHasU:Z

    :cond_17
    :goto_b
    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v34

    if-nez v34, :cond_18

    if-gez v27, :cond_1f

    const/16 v34, 0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_1f

    const/16 v25, 0x1

    :goto_c
    const/16 v33, 0x0

    if-nez v25, :cond_18

    if-lez v27, :cond_18

    const/16 v34, 0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_18

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v33

    if-eqz v33, :cond_20

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    move/from16 v34, v0

    if-eqz v34, :cond_20

    const/16 v24, 0x1

    :goto_d
    if-nez v24, :cond_18

    if-eqz v28, :cond_21

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_18

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v7, v7, v34

    add-int/lit8 v8, v8, 0x1

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->cHasU:Z

    :cond_18
    :goto_e
    if-gez v27, :cond_23

    const/16 v34, 0x1

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    const/16 v25, 0x1

    :goto_f
    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v34

    if-nez v34, :cond_19

    if-eqz v25, :cond_19

    if-eqz v28, :cond_24

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_19

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v19, v19, v34

    add-int/lit8 v20, v20, 0x1

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->gHasU:Z

    :cond_19
    :goto_10
    invoke-static {v15}, Lorg/telegram/messenger/DialogObject;->isChannel(Lorg/telegram/tgnet/TLRPC$TL_dialog;)Z

    move-result v34

    if-eqz v34, :cond_1a

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v13

    if-eqz v28, :cond_27

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_1a

    iget-boolean v0, v13, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v34, v0

    if-eqz v34, :cond_26

    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v30, v30, v34

    add-int/lit8 v31, v31, 0x1

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->sgHasU:Z

    :cond_1a
    :goto_11
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    :cond_1b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_1c

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->allHasU:Z

    :cond_1c
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v4, v4, v34

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a

    :cond_1d
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_1e

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->favHasU:Z

    :cond_1e
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v16, v16, v34

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_b

    :cond_1f
    const/16 v25, 0x0

    goto/16 :goto_c

    :cond_20
    const/16 v24, 0x0

    goto/16 :goto_d

    :cond_21
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_22

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->cHasU:Z

    :cond_22
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v7, v7, v34

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_e

    :cond_23
    const/16 v25, 0x0

    goto/16 :goto_f

    :cond_24
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_25

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->gHasU:Z

    :cond_25
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v19, v19, v34

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_10

    :cond_26
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v10, v10, v34

    add-int/lit8 v11, v11, 0x1

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->chHasU:Z

    goto/16 :goto_11

    :cond_27
    iget-boolean v0, v13, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v34, v0

    if-eqz v34, :cond_29

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_28

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->sgHasU:Z

    :cond_28
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v30, v30, v34

    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_11

    :cond_29
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v34

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(J)Z

    move-result v34

    if-nez v34, :cond_2a

    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/khalkhaloka/Main;->chHasU:Z

    :cond_2a
    iget v0, v15, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    move/from16 v34, v0

    add-int v10, v10, v34

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    :cond_2b
    const/4 v12, 0x0

    const/16 v32, 0x0

    const/16 v21, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    const-string/jumbo v34, "tabs_count_chats"

    const/16 v35, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    if-eqz v34, :cond_3a

    move v12, v11

    move/from16 v32, v31

    move/from16 v21, v20

    move v9, v8

    move/from16 v18, v17

    move v6, v5

    :goto_12
    const-string/jumbo v34, "HOSHYAR_T"

    const-string/jumbo v35, "run is her : +"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countCh:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_2d

    if-eqz v12, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countCh:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getVisibility()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countCh:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2c
    const/16 v34, 0x3e7

    move/from16 v0, v34

    if-le v12, v0, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countCh:Landroid/widget/TextView;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "+"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "%d"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x3e7

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2d
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countSG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_2f

    if-eqz v32, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countSG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getVisibility()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countSG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2e
    const/16 v34, 0x3e7

    move/from16 v0, v32

    move/from16 v1, v34

    if-le v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countSG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "+"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "%d"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x3e7

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2f
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_31

    if-eqz v21, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getVisibility()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_30
    const/16 v34, 0x3e7

    move/from16 v0, v21

    move/from16 v1, v34

    if-le v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "+"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "%d"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x3e7

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_31
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countCon:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_33

    if-eqz v9, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countCon:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getVisibility()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countCon:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_32
    const/16 v34, 0x3e7

    move/from16 v0, v34

    if-le v9, v0, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countCon:Landroid/widget/TextView;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "+"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "%d"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x3e7

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_33
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countfav:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_35

    if-eqz v18, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countfav:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getVisibility()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countfav:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_34
    const/16 v34, 0x3e7

    move/from16 v0, v18

    move/from16 v1, v34

    if-le v0, v1, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countfav:Landroid/widget/TextView;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "+"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "%d"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x3e7

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_35
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countAll:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_37

    if-eqz v6, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countAll:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getVisibility()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countAll:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_36
    const/16 v34, 0x3e7

    move/from16 v0, v34

    if-le v6, v0, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countAll:Landroid/widget/TextView;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "+"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "%d"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x3e7

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_37
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countUnread:Landroid/widget/TextView;

    move-object/from16 v34, v0

    if-eqz v34, :cond_39

    if-eqz v6, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countUnread:Landroid/widget/TextView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getVisibility()I

    move-result v34

    const/16 v35, 0x4

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countUnread:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_38
    const/16 v34, 0x3e7

    move/from16 v0, v34

    if-le v6, v0, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countUnread:Landroid/widget/TextView;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "+"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "%d"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x3e7

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_39
    :goto_19
    return-void

    :cond_3a
    move v12, v10

    move/from16 v32, v30

    move/from16 v21, v19

    move v9, v7

    move/from16 v18, v16

    move v6, v4

    goto/16 :goto_12

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countCh:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const-string/jumbo v35, "%d"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v34, "HOSHYAR_T"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "SET  Channel Group  IS : +"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "%d"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countCh:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_13

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countSG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const-string/jumbo v35, "%d"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v34, "HOSHYAR_T"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "SET  Super Group  IS : +"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "%d"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countSG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_14

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const-string/jumbo v35, "%d"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v34, "HOSHYAR_T"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "SET  Group  IS : +"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "%d"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countG:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_15

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countCon:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const-string/jumbo v35, "%d"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v34, "HOSHYAR_T"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "SET  countCon  IS : +"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "%d"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countCon:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_16

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countfav:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const-string/jumbo v35, "%d"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v34, "HOSHYAR_T"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "SET  Favorite  IS : +"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "%d"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countfav:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_17

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countAll:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const-string/jumbo v35, "%d"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v34, "HOSHYAR_T"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "SET  All  IS : +"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "%d"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countAll:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_18

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countUnread:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const-string/jumbo v35, "%d"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v34, "HOSHYAR_T"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "SET  Unread  IS : +"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "%d"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->countUnread:Landroid/widget/TextView;

    move-object/from16 v34, v0

    const/16 v35, 0x4

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_19
.end method

.method private updateUserData()V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0, v4, v6}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;Z)V

    const v5, -0xaf7a4f

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setColor(I)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Main;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Main;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v8, "500_500"

    invoke-virtual {v5, v1, v8, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Main;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5, v7}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getCustomTheme()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    iget-object v5, p0, Lorg/telegram/khalkhaloka/Main;->prof1:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Main;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z

    move-result v8

    if-nez v8, :cond_4

    :goto_2
    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_1
    return-void

    :cond_2
    move v5, v7

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lorg/telegram/khalkhaloka/Main;->prof:Lorg/telegram/khalkhaloka/Khalkhaloka_textview;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move v6, v7

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 60
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Main;->getActionBar()Landroid/app/ActionBar;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Landroid/app/ActionBar;->hide()V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getCustomTheme()I

    move-result v31

    const/16 v57, 0x1

    move/from16 v0, v31

    move/from16 v1, v57

    if-ne v0, v1, :cond_0

    const v57, 0x7f040047

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->setContentView(I)V

    :cond_0
    const/16 v57, 0x2

    move/from16 v0, v31

    move/from16 v1, v57

    if-ne v0, v1, :cond_1

    const v57, 0x7f040048

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->setContentView(I)V

    :cond_1
    const/16 v57, 0x3

    move/from16 v0, v31

    move/from16 v1, v57

    if-ne v0, v1, :cond_2

    const v57, 0x7f040049

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->setContentView(I)V

    :cond_2
    const/16 v57, 0x4

    move/from16 v0, v31

    move/from16 v1, v57

    if-ne v0, v1, :cond_3

    const v57, 0x7f04004a

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->setContentView(I)V

    :cond_3
    const v57, 0x7f10010b

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Lorg/telegram/ui/Components/BackupImageView;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Main;->avatarImage:Lorg/telegram/ui/Components/BackupImageView;

    const v57, 0x7f1000a0

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Main;->countAll:Landroid/widget/TextView;

    const v57, 0x7f1000a2

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Main;->countCon:Landroid/widget/TextView;

    const v57, 0x7f1000a4

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Main;->countG:Landroid/widget/TextView;

    const v57, 0x7f1000a6

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Main;->countSG:Landroid/widget/TextView;

    const v57, 0x7f1000a8

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Main;->countCh:Landroid/widget/TextView;

    const v57, 0x7f1000aa

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Main;->countUnread:Landroid/widget/TextView;

    const v57, 0x7f1000ac

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Main;->countfav:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->avatarUpdater:Lorg/telegram/ui/Components/AvatarUpdater;

    move-object/from16 v57, v0

    new-instance v58, Lorg/telegram/khalkhaloka/Main$1;

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$1;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v58

    move-object/from16 v1, v57

    iput-object v0, v1, Lorg/telegram/ui/Components/AvatarUpdater;->delegate:Lorg/telegram/ui/Components/AvatarUpdater$AvatarUpdaterDelegate;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Main;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v57

    const-string/jumbo v58, "fonts/iransansbold.ttf"

    invoke-static/range {v57 .. v58}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    const v57, 0x7f1001b9

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001bf

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001be

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001c0

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001ba

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001c7

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001c8

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001d1

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001d0

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001d2

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001da

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001d9

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001db

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001e3

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001e2

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001e4

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001f2

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001f1

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001f3

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001ec

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001c9

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001eb

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    const v57, 0x7f1001bd

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    const v57, 0x7f0803b3

    move-object/from16 v0, v32

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001c6

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    const v57, 0x7f080508

    move-object/from16 v0, v33

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001bb

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    const v57, 0x7f0804e6

    move-object/from16 v0, v34

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001c4

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    const v57, 0x7f08052d

    move-object/from16 v0, v35

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001cb

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    const v57, 0x7f0804fd

    move-object/from16 v0, v36

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001cf

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    const v57, 0x7f080539

    move-object/from16 v0, v37

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001df

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    const v57, 0x7f080507

    move-object/from16 v0, v38

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001f5

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    const v57, 0x7f0804e7

    move-object/from16 v0, v39

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001f7

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    const v57, 0x7f0804cf

    move-object/from16 v0, v40

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001ea

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    const v57, 0x7f0804d8

    move-object/from16 v0, v41

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001dd

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    const v57, 0x7f0804d9

    move-object/from16 v0, v42

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001ea

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    const v57, 0x7f1001e8

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    const v57, 0x7f080531

    move-object/from16 v0, v44

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001e6

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/TextView;

    const v57, 0x7f080528

    move-object/from16 v0, v45

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001e1

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v46

    check-cast v46, Landroid/widget/TextView;

    const v57, 0x7f08052a

    move-object/from16 v0, v46

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001cd

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    const v57, 0x7f0804d6

    move-object/from16 v0, v47

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001d8

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v48

    check-cast v48, Landroid/widget/TextView;

    const v57, 0x7f080518

    move-object/from16 v0, v48

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001d4

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v49

    check-cast v49, Landroid/widget/TextView;

    const v57, 0x7f08053f

    move-object/from16 v0, v49

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001d6

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/TextView;

    const v57, 0x7f08050e

    move-object/from16 v0, v50

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001c2

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/TextView;

    const v57, 0x7f080530

    move-object/from16 v0, v51

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001f0

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/TextView;

    const v57, 0x7f080532

    move-object/from16 v0, v52

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001ee

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/TextView;

    const v57, 0x7f0804fb

    move-object/from16 v0, v53

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v57, 0x7f1001f9

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v54

    check-cast v54, Landroid/widget/TextView;

    const v57, 0x7f080526

    move-object/from16 v0, v54

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/16 v57, 0x3

    move/from16 v0, v31

    move/from16 v1, v57

    if-ne v0, v1, :cond_7

    const v57, 0x7f10014f

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Main;->prof1:Landroid/widget/TextView;

    :goto_0
    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v50

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v51

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v52

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v53

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object/from16 v0, v54

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v57, 0x4

    move/from16 v0, v31

    move/from16 v1, v57

    if-eq v0, v1, :cond_4

    const/16 v57, 0x3

    move/from16 v0, v31

    move/from16 v1, v57

    if-ne v0, v1, :cond_5

    :cond_4
    const v57, 0x7f100204

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    const v57, 0x7f100097

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Landroid/widget/TextView;

    const v57, 0x7f08036e

    move-object/from16 v0, v55

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, v55

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$2;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$2;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const-string/jumbo v57, "Prefs"

    const/16 v58, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    move/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lorg/telegram/khalkhaloka/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/khalkhaloka/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v57

    invoke-static/range {v57 .. v57}, Lorg/telegram/buy/Cheker;->get_ANDROID_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const/16 v57, 0xf

    const-string/jumbo v58, "premium"

    const-string/jumbo v59, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Lorg/telegram/buy/Cheker;->Decode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v57, 0x3

    move/from16 v0, v31

    move/from16 v1, v57

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->prof1:Landroid/widget/TextView;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_1
    new-instance v57, Lorg/telegram/khalkhaloka/Main$3;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$3;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$4;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$4;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$5;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$5;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v57

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$6;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$6;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$7;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$7;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$8;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$8;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v57

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$9;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$9;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    invoke-virtual/range {v56 .. v57}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$10;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$10;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$11;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$11;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$12;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v15}, Lorg/telegram/khalkhaloka/Main$12;-><init>(Lorg/telegram/khalkhaloka/Main;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$13;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$13;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$14;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$14;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$15;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$15;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v57

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$16;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v15}, Lorg/telegram/khalkhaloka/Main$16;-><init>(Lorg/telegram/khalkhaloka/Main;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$17;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$17;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v57

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$18;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$18;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$19;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$19;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$20;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$20;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$21;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$21;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v57

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$22;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$22;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v57

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$23;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$23;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v57

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v57, Lorg/telegram/khalkhaloka/Main$24;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/khalkhaloka/Main$24;-><init>(Lorg/telegram/khalkhaloka/Main;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getAddToChannel()Ljava/lang/Boolean;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v57

    if-eqz v57, :cond_6

    invoke-static {}, Lorg/telegram/hoshyar/Setting/Setting;->getLoginCount()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v57 .. v57}, Lorg/telegram/hoshyar/Setting/Setting;->setLoginCount(Ljava/lang/String;)V

    move v10, v9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/khalkhaloka/Main;->count_login:I

    move/from16 v57, v0

    add-int/lit8 v57, v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/khalkhaloka/Main;->count_login:I

    :cond_6
    return-void

    :cond_7
    const v57, 0x7f10014f

    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/telegram/khalkhaloka/Main;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/khalkhaloka/Main;->prof:Lorg/telegram/khalkhaloka/Khalkhaloka_textview;

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/khalkhaloka/Main;->prof:Lorg/telegram/khalkhaloka/Khalkhaloka_textview;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    invoke-virtual {v0, v12}, Lorg/telegram/khalkhaloka/Khalkhaloka_textview;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    sget-object v1, Lorg/telegram/messenger/MessagesController;->dialogs:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/telegram/khalkhaloka/Main;->updateUnreadCount(Ljava/util/ArrayList;)V

    :try_start_0
    invoke-direct {p0}, Lorg/telegram/khalkhaloka/Main;->updateUserData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TRY_CATCH_MAIN_PAGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
