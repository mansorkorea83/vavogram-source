.class Lorg/telegram/messenger/ContactsController$6;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;

.field final synthetic val$contactHashMap:Ljava/util/HashMap;

.field final synthetic val$first:Z

.field final synthetic val$force:Z

.field final synthetic val$request:Z

.field final synthetic val$schedule:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;Ljava/util/HashMap;ZZZZ)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    iput-boolean p3, p0, Lorg/telegram/messenger/ContactsController$6;->val$schedule:Z

    iput-boolean p4, p0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    iput-boolean p5, p0, Lorg/telegram/messenger/ContactsController$6;->val$first:Z

    iput-boolean p6, p0, Lorg/telegram/messenger/ContactsController$6;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 38

    const/4 v15, 0x1

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/ContactsController$Contact;

    const/4 v10, 0x0

    :goto_0
    iget-object v5, v11, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v10, v5, :cond_0

    iget-object v5, v11, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v13, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "tmessages"

    const-string/jumbo v5, "start read contacts from phone"

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$schedule:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    #calls: Lorg/telegram/messenger/ContactsController;->checkContactsInternal()Z
    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$200(Lorg/telegram/messenger/ContactsController;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    #calls: Lorg/telegram/messenger/ContactsController;->readContactsFromPhoneBook()Ljava/util/HashMap;
    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->access$500(Lorg/telegram/messenger/ContactsController;)Ljava/util/HashMap;

    move-result-object v9

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v25

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map$Entry;

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/messenger/ContactsController$Contact;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/telegram/messenger/ContactsController$Contact;

    if-nez v17, :cond_4

    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_4

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz v11, :cond_9

    move-object/from16 v17, v11

    move-object/from16 v0, v17

    iget v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    :cond_4
    if-eqz v17, :cond_a

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_6
    const/16 v24, 0x1

    :goto_3
    if-eqz v17, :cond_7

    if-eqz v24, :cond_e

    :cond_7
    const/4 v10, 0x0

    :goto_4
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_d

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v22

    const/4 v4, -0x1

    move/from16 v0, v22

    if-eq v0, v4, :cond_b

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    invoke-virtual {v4, v10, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v4, v0, :cond_b

    :cond_8
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_a
    const/16 v24, 0x0

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_8

    if-nez v24, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_c
    new-instance v21, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v21 .. v21}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    int-to-long v0, v4

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v21

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-object/from16 v0, v21

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-wide/from16 v34, v0

    int-to-long v0, v10

    move-wide/from16 v36, v0

    const/16 v4, 0x20

    shl-long v36, v36, v4

    or-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v21

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_e
    const/4 v10, 0x0

    :goto_6
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_15

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v22

    const/4 v4, -0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v12, :cond_13

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v31

    if-eqz v31, :cond_13

    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v4, :cond_11

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_7
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v4, :cond_12

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v23, v0

    :goto_8
    if-eqz v31, :cond_13

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    :cond_f
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_10
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    :cond_11
    const-string/jumbo v19, ""

    goto :goto_7

    :cond_12
    const-string/jumbo v23, ""

    goto :goto_8

    :cond_13
    new-instance v21, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v21 .. v21}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->id:I

    int-to-long v0, v4

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v21

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-object/from16 v0, v21

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-wide/from16 v34, v0

    int-to-long v0, v10

    move-wide/from16 v36, v0

    const/16 v4, 0x20

    shl-long v36, v36, v4

    or-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v21

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_14
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v4, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneDeleted:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phoneTypes:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_15
    move-object/from16 v0, v17

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$first:Z

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v4

    move/from16 v0, v25

    if-ne v0, v4, :cond_18

    const-string/jumbo v4, "tmessages"

    const-string/jumbo v5, "contacts not changed!"

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_a
    return-void

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;)V

    :cond_19
    if-nez v15, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    new-instance v4, Lorg/telegram/messenger/ContactsController$6$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/ContactsController$6$1;-><init>(Lorg/telegram/messenger/ContactsController$6;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1a
    const-string/jumbo v4, "tmessages"

    const-string/jumbo v5, "done processing contacts"

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_23

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v5, 0x0

    #setter for: Lorg/telegram/messenger/ContactsController;->completedRequestsCount:I
    invoke-static {v4, v5}, Lorg/telegram/messenger/ContactsController;->access$002(Lorg/telegram/messenger/ContactsController;I)I

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x43fa

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v7, v4

    const/4 v10, 0x0

    :goto_b
    if-ge v10, v7, :cond_17

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit16 v4, v10, 0x1f4

    add-int/lit8 v5, v10, 0x1

    mul-int/lit16 v5, v5, 0x1f4

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v28, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct/range {v28 .. v28}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, v28

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->replace:Z

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v33

    new-instance v4, Lorg/telegram/messenger/ContactsController$6$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/messenger/ContactsController$6$2;-><init>(Lorg/telegram/messenger/ContactsController$6;Ljava/util/HashMap;ILjava/util/HashMap;Ljava/util/HashMap;)V

    const/4 v5, 0x6

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$request:Z

    if-eqz v4, :cond_1a

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map$Entry;

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/telegram/messenger/ContactsController$Contact;

    invoke-interface/range {v26 .. v26}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/4 v10, 0x0

    :goto_c
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/messenger/ContactsController$6;->val$force:Z

    if-nez v4, :cond_21

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$6;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsByPhone:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_contact;

    if-eqz v12, :cond_21

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v0, v12, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v31

    if-eqz v31, :cond_21

    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v4, :cond_1f

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_d
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v4, :cond_20

    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v23, v0

    :goto_e
    if-eqz v31, :cond_21

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    :cond_1d
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_1e
    :goto_f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_c

    :cond_1f
    const-string/jumbo v19, ""

    goto :goto_d

    :cond_20
    const-string/jumbo v23, ""

    goto :goto_e

    :cond_21
    new-instance v21, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct/range {v21 .. v21}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v21

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-object/from16 v0, v21

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-wide/from16 v34, v0

    int-to-long v0, v10

    move-wide/from16 v36, v0

    const/16 v4, 0x20

    shl-long v36, v36, v4

    or-long v34, v34, v36

    move-wide/from16 v0, v34

    move-object/from16 v2, v21

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->client_id:J

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_22
    sget-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/ContactsController$6$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lorg/telegram/messenger/ContactsController$6$3;-><init>(Lorg/telegram/messenger/ContactsController$6;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_a

    :cond_23
    sget-object v4, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/ContactsController$6$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v9}, Lorg/telegram/messenger/ContactsController$6$4;-><init>(Lorg/telegram/messenger/ContactsController$6;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook(Ljava/util/HashMap;)V

    goto/16 :goto_a
.end method
