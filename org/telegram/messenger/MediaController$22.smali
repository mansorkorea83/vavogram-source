.class final Lorg/telegram/messenger/MediaController$22;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelled:[Z

.field final synthetic val$finalProgress:Landroid/app/ProgressDialog;

.field final synthetic val$mime:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$sourceFile:Ljava/io/File;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/io/File;[ZLandroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/MediaController$22;->val$type:I

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$22;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/MediaController$22;->val$sourceFile:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/messenger/MediaController$22;->val$cancelled:[Z

    iput-object p5, p0, Lorg/telegram/messenger/MediaController$22;->val$finalProgress:Landroid/app/ProgressDialog;

    iput-object p6, p0, Lorg/telegram/messenger/MediaController$22;->val$mime:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$22;->val$type:I

    if-nez v7, :cond_8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath()Ljava/io/File;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v22, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    sub-long v20, v8, v10

    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/MediaController$22;->val$sourceFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v24

    const-wide/16 v4, 0x0

    :goto_1
    cmp-long v7, v4, v24

    if-gez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$22;->val$cancelled:[Z

    const/4 v8, 0x0

    aget-boolean v7, v7, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_b

    :cond_2
    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$22;->val$cancelled:[Z

    const/4 v8, 0x0

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_5

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    const/16 v22, 0x0

    :cond_5
    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$22;->val$type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    sget-object v7, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v8, "download"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/DownloadManager;

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController$22;->val$mime:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-virtual/range {v6 .. v14}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$22;->val$finalProgress:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_7

    new-instance v7, Lorg/telegram/messenger/MediaController$22$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lorg/telegram/messenger/MediaController$22$2;-><init>(Lorg/telegram/messenger/MediaController$22;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void

    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$22;->val$type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generateVideoPath()Ljava/io/File;

    move-result-object v15

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$22;->val$type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$22;->val$name:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v15, v16

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController$22;->val$type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    sget-object v7, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$22;->val$name:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v15, v16

    goto/16 :goto_0

    :cond_b
    const-wide/16 v8, 0x1000

    sub-long v10, v24, v4

    :try_start_6
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MediaController$22;->val$finalProgress:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    sub-long/2addr v8, v10

    cmp-long v7, v20, v8

    if-gtz v7, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    long-to-float v7, v4

    move-wide/from16 v0, v24

    long-to-float v8, v0

    div-float/2addr v7, v8

    const/high16 v8, 0x42c8

    mul-float/2addr v7, v8

    float-to-int v0, v7

    move/from16 v19, v0

    new-instance v7, Lorg/telegram/messenger/MediaController$22$1;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v7, v0, v1}, Lorg/telegram/messenger/MediaController$22$1;-><init>(Lorg/telegram/messenger/MediaController$22;I)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_c
    const-wide/16 v8, 0x1000

    add-long/2addr v4, v8

    goto/16 :goto_1

    :catch_0
    move-exception v17

    :try_start_7
    const-string/jumbo v7, "tmessages"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v22, 0x0

    if-eqz v3, :cond_d

    :try_start_8
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_d
    :goto_5
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v7

    goto/16 :goto_3

    :catchall_0
    move-exception v7

    if-eqz v3, :cond_e

    :try_start_a
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_e
    :goto_6
    if-eqz v2, :cond_f

    :try_start_b
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :cond_f
    :goto_7
    :try_start_c
    throw v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception v17

    const-string/jumbo v7, "tmessages"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_10
    :try_start_d
    invoke-static {v15}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->addMediaToGallery(Landroid/net/Uri;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_4

    :catch_3
    move-exception v7

    goto/16 :goto_2

    :catch_4
    move-exception v7

    goto/16 :goto_3

    :catch_5
    move-exception v7

    goto :goto_5

    :catch_6
    move-exception v8

    goto :goto_6

    :catch_7
    move-exception v8

    goto :goto_7
.end method
