.class public Lorg/telegram/messenger/query/MessagesQuery;
.super Ljava/lang/Object;
.source "MessagesQuery.java"


# static fields
.field private static entityComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/query/MessagesQuery$1;

    invoke-direct {v0}, Lorg/telegram/messenger/query/MessagesQuery$1;-><init>()V

    sput-object v0, Lorg/telegram/messenger/query/MessagesQuery;->entityComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(IIZ)Lorg/telegram/messenger/MessageObject;
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/query/MessagesQuery;->loadPinnedMessageInternal(IIZ)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/query/MessagesQuery;->broadcastPinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/query/MessagesQuery;->savePinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;)V

    return-void
.end method

.method static synthetic access$300(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/messenger/query/MessagesQuery;->broadcastReplyMessages(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V

    return-void
.end method

.method static synthetic access$400(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/query/MessagesQuery;->saveReplyMessages(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static broadcastPinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;ZZ)",
            "Lorg/telegram/messenger/MessageObject;"
        }
    .end annotation

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v0, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    new-instance v0, Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v5, v6, v1}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Ljava/util/AbstractMap;Z)V

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lorg/telegram/messenger/query/MessagesQuery$5;

    move-object v1, p1

    move v2, p3

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/query/MessagesQuery$5;-><init>(Ljava/util/ArrayList;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static broadcastReplyMessages(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;JZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;JZ)V"
        }
    .end annotation

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v12, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v14, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v12, 0x0

    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v2, v13, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/telegram/messenger/query/MessagesQuery$9;

    move-object/from16 v3, p2

    move/from16 v4, p6

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v11}, Lorg/telegram/messenger/query/MessagesQuery$9;-><init>(Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;J)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getEntities([Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/16 v21, 0x0

    aget-object v21, p0, v21

    if-nez v21, :cond_2

    :cond_0
    const/4 v8, 0x0

    :cond_1
    return-object v8

    :cond_2
    const/4 v8, 0x0

    const/16 v19, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    const-string/jumbo v14, "`"

    const-string/jumbo v15, "```"

    :goto_0
    const/16 v21, 0x0

    aget-object v22, p0, v21

    if-nez v12, :cond_3

    const-string/jumbo v21, "`"

    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1, v13}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v11

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v11, v0, :cond_17

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v21, 0x0

    aget-object v21, p0, v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    sub-int v21, v21, v11

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    const/16 v21, 0x0

    aget-object v21, p0, v21

    add-int/lit8 v22, v11, 0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    const/16 v22, 0x60

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/16 v21, 0x0

    aget-object v21, p0, v21

    add-int/lit8 v22, v11, 0x2

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    const/16 v22, 0x60

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    const/4 v12, 0x1

    :goto_2
    move/from16 v19, v11

    if-eqz v12, :cond_5

    const/16 v21, 0x3

    :goto_3
    add-int v13, v11, v21

    goto :goto_0

    :cond_3
    const-string/jumbo v21, "```"

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    :cond_5
    const/16 v21, 0x1

    goto :goto_3

    :cond_6
    if-nez v8, :cond_7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    if-eqz v12, :cond_8

    const/16 v21, 0x3

    :goto_4
    add-int v4, v11, v21

    :goto_5
    const/16 v21, 0x0

    aget-object v21, p0, v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v4, v0, :cond_9

    const/16 v21, 0x0

    aget-object v21, p0, v21

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    const/16 v22, 0x60

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    const/16 v21, 0x1

    goto :goto_4

    :cond_9
    if-eqz v12, :cond_d

    const/16 v21, 0x3

    :goto_6
    add-int v13, v11, v21

    if-eqz v12, :cond_16

    if-lez v19, :cond_e

    const/16 v21, 0x0

    aget-object v21, p0, v21

    add-int/lit8 v22, v19, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    :goto_7
    const/16 v21, 0x20

    move/from16 v0, v21

    if-eq v10, v0, :cond_a

    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v10, v0, :cond_f

    :cond_a
    const/16 v16, 0x1

    :goto_8
    const/16 v21, 0x0

    aget-object v22, p0, v21

    const/16 v23, 0x0

    if-eqz v16, :cond_10

    const/16 v21, 0x1

    :goto_9
    sub-int v21, v19, v21

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v21, p0, v21

    add-int/lit8 v22, v19, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v11}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v21, v11, 0x3

    const/16 v22, 0x0

    aget-object v22, p0, v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_11

    const/16 v21, 0x0

    aget-object v21, p0, v21

    add-int/lit8 v22, v11, 0x3

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    :goto_a
    const/16 v21, 0x0

    aget-object v22, p0, v21

    add-int/lit8 v23, v11, 0x3

    const/16 v21, 0x20

    move/from16 v0, v21

    if-eq v10, v0, :cond_b

    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v10, v0, :cond_12

    :cond_b
    const/16 v21, 0x1

    :goto_b
    add-int v21, v21, v23

    const/16 v23, 0x0

    aget-object v23, p0, v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v23

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v21

    if-eqz v21, :cond_13

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v20, v21, v22

    const/16 v22, 0x1

    const-string/jumbo v23, "\n"

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v20

    :goto_c
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v21

    if-eqz v21, :cond_c

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "\n"

    aput-object v23, v21, v22

    const/16 v22, 0x1

    aput-object v7, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    :cond_c
    const/16 v21, 0x0

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v20, v22, v23

    const/16 v23, 0x1

    aput-object v6, v22, v23

    const/16 v23, 0x2

    aput-object v7, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v22

    aput-object v22, p0, v21

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;-><init>()V

    if-eqz v16, :cond_14

    const/16 v21, 0x0

    :goto_d
    add-int v21, v21, v19

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;->offset:I

    sub-int v21, v11, v19

    add-int/lit8 v22, v21, -0x3

    if-eqz v16, :cond_15

    const/16 v21, 0x0

    :goto_e
    add-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;->length:I

    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;->language:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, -0x6

    :goto_f
    const/16 v19, -0x1

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_d
    const/16 v21, 0x1

    goto/16 :goto_6

    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_10
    const/16 v21, 0x0

    goto/16 :goto_9

    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_12
    const/16 v21, 0x0

    goto/16 :goto_b

    :cond_13
    const/16 v16, 0x1

    goto :goto_c

    :cond_14
    const/16 v21, 0x1

    goto :goto_d

    :cond_15
    const/16 v21, 0x1

    goto :goto_e

    :cond_16
    const/16 v21, 0x0

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aget-object v24, p0, v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x0

    aget-object v24, p0, v24

    add-int/lit8 v25, v19, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v0, v1, v11}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const/16 v24, 0x0

    aget-object v24, p0, v24

    add-int/lit8 v25, v11, 0x1

    const/16 v26, 0x0

    aget-object v26, p0, v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v26

    invoke-static/range {v24 .. v26}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v22

    aput-object v22, p0, v21

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;-><init>()V

    move/from16 v0, v19

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;->offset:I

    sub-int v21, v11, v19

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;->length:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, -0x2

    goto/16 :goto_f

    :cond_17
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    if-eqz v12, :cond_19

    const/16 v21, 0x0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    aget-object v24, p0, v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x0

    aget-object v24, p0, v24

    add-int/lit8 v25, v19, 0x2

    const/16 v26, 0x0

    aget-object v26, p0, v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->length()I

    move-result v26

    invoke-static/range {v24 .. v26}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v22

    aput-object v22, p0, v21

    if-nez v8, :cond_18

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_18
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;-><init>()V

    move/from16 v0, v19

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;->offset:I

    const/16 v21, 0x1

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;->length:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    const/16 v21, 0x0

    aget-object v21, p0, v21

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    const/16 v21, 0x0

    aget-object v17, p0, v21

    check-cast v17, Landroid/text/Spannable;

    const/16 v21, 0x0

    const/16 v22, 0x0

    aget-object v22, p0, v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const-class v23, Lorg/telegram/ui/Components/URLSpanUserMention;

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lorg/telegram/ui/Components/URLSpanUserMention;

    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_10
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_1

    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;-><init>()V

    aget-object v21, v18, v5

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/ui/Components/URLSpanUserMention;->getURL()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/MessagesController;->getInputUser(I)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1b

    aget-object v21, v18, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->offset:I

    aget-object v21, v18, v5

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v21

    const/16 v22, 0x0

    aget-object v22, p0, v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->offset:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    const/16 v21, 0x0

    aget-object v21, p0, v21

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->offset:I

    move/from16 v22, v0

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int/lit8 v22, v22, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    const/16 v22, 0x20

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a

    iget v0, v9, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    iput v0, v9, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->length:I

    :cond_1a
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_10
.end method

.method public static loadPinnedMessage(IIZ)Lorg/telegram/messenger/MessageObject;
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/MessagesQuery$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/query/MessagesQuery$2;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/telegram/messenger/query/MessagesQuery;->loadPinnedMessageInternal(IIZ)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    goto :goto_0
.end method

.method private static loadPinnedMessageInternal(IIZ)Lorg/telegram/messenger/MessageObject;
    .locals 19

    move/from16 v0, p1

    int-to-long v14, v0

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const/16 v13, 0x20

    shl-long v16, v16, v13

    or-long v8, v14, v16

    const/4 v10, 0x0

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v15, "SELECT data, mid, date FROM messages WHERE mid = %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v5, v13, v14}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v10

    invoke-virtual {v5}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    iput v13, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    const/4 v13, 0x2

    invoke-virtual {v4, v13}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v13

    iput v13, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move/from16 v0, p0

    neg-int v13, v0

    int-to-long v14, v13

    iput-wide v14, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v10, v12, v3}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-nez v10, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v15, "SELECT data FROM chat_pinned WHERE uid = %d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v13

    const/4 v14, 0x0

    invoke-static {v5, v13, v14}, Lorg/telegram/tgnet/TLRPC$Message;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v10

    invoke-virtual {v5}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    iget v13, v10, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move/from16 v0, p1

    if-eq v13, v0, :cond_3

    const/4 v10, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_2
    if-nez v10, :cond_4

    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    invoke-static/range {p0 .. p0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v13

    iput-object v13, v7, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-object v13, v7, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v13

    new-instance v14, Lorg/telegram/messenger/query/MessagesQuery$3;

    move/from16 v0, p0

    invoke-direct {v14, v0}, Lorg/telegram/messenger/query/MessagesQuery$3;-><init>(I)V

    invoke-virtual {v13, v7, v14}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_1
    const/4 v13, 0x0

    :goto_2
    return-object v13

    :cond_3
    move/from16 v0, p0

    neg-int v13, v0

    int-to-long v14, v13

    iput-wide v14, v10, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-static {v10, v12, v3}, Lorg/telegram/messenger/MessagesStorage;->addUsersAndChatsFromMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string/jumbo v13, "tmessages"

    invoke-static {v13, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    const/4 v13, 0x1

    :try_start_1
    move/from16 v0, p2

    invoke-static {v10, v11, v2, v13, v0}, Lorg/telegram/messenger/query/MessagesQuery;->broadcastPinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    goto :goto_2

    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    const-string/jumbo v14, ","

    invoke-static {v14, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v11}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    const-string/jumbo v14, ","

    invoke-static {v14, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v2}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_7
    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v10, v11, v2, v13, v14}, Lorg/telegram/messenger/query/MessagesQuery;->broadcastPinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J)V"
        }
    .end annotation

    move-wide/from16 v0, p1

    long-to-int v4, v0

    if-nez v4, :cond_6

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->isReply()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v4, :cond_2

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    if-nez v17, :cond_1

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v4

    new-instance v6, Lorg/telegram/messenger/query/MessagesQuery$6;

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    move-object/from16 v3, v18

    invoke-direct {v6, v0, v1, v2, v3}, Lorg/telegram/messenger/query/MessagesQuery$6;-><init>(Ljava/util/ArrayList;JLjava/util/HashMap;)V

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/MessageObject;->isReply()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v4, :cond_a

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v14, v4

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_7

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v6, v4

    const/16 v4, 0x20

    shl-long/2addr v6, v4

    or-long/2addr v14, v6

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v12, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_8

    const/16 v4, 0x2c

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    if-nez v17, :cond_9

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v9, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    move v10, v12

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v20

    new-instance v4, Lorg/telegram/messenger/query/MessagesQuery$7;

    move-wide/from16 v6, p1

    invoke-direct/range {v4 .. v10}, Lorg/telegram/messenger/query/MessagesQuery$7;-><init>(Ljava/lang/StringBuilder;JLjava/util/ArrayList;Ljava/util/HashMap;I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method private static savePinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/MessagesQuery$4;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/query/MessagesQuery$4;-><init>(Lorg/telegram/tgnet/TLRPC$Message;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static saveReplyMessages(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/query/MessagesQuery$8;

    invoke-direct {v1, p1, p0}, Lorg/telegram/messenger/query/MessagesQuery$8;-><init>(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sortEntities(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/telegram/messenger/query/MessagesQuery;->entityComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
