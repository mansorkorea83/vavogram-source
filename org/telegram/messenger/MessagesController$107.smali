.class Lorg/telegram/messenger/MessagesController$107;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->processUpdateArray(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$channelViews:Landroid/util/SparseArray;

.field final synthetic val$chatInfoToUpdate:Ljava/util/ArrayList;

.field final synthetic val$contactsIds:Ljava/util/ArrayList;

.field final synthetic val$editingMessages:Ljava/util/HashMap;

.field final synthetic val$interfaceUpdateMaskFinal:I

.field final synthetic val$messages:Ljava/util/HashMap;

.field final synthetic val$printChangedArg:Z

.field final synthetic val$updatesOnMainThread:Ljava/util/ArrayList;

.field final synthetic val$webPages:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;ILjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;ZLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$107;->val$interfaceUpdateMaskFinal:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$107;->val$updatesOnMainThread:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$107;->val$webPages:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$107;->val$messages:Ljava/util/HashMap;

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$107;->val$editingMessages:Ljava/util/HashMap;

    iput-boolean p7, p0, Lorg/telegram/messenger/MessagesController$107;->val$printChangedArg:Z

    iput-object p8, p0, Lorg/telegram/messenger/MessagesController$107;->val$contactsIds:Ljava/util/ArrayList;

    iput-object p9, p0, Lorg/telegram/messenger/MessagesController$107;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    iput-object p10, p0, Lorg/telegram/messenger/MessagesController$107;->val$channelViews:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 40

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MessagesController$107;->val$interfaceUpdateMaskFinal:I

    move/from16 v35, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$updatesOnMainThread:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$updatesOnMainThread:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$updatesOnMainThread:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/telegram/tgnet/TLRPC$Update;

    new-instance v31, Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$User;-><init>()V

    move-object/from16 v0, v33

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    move-object/from16 v0, v31

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v33

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    if-eqz v2, :cond_2

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyStatusTimestamp;

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->rules:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;Z)V

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_privacyKeyChatInvite;

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->rules:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/ContactsController;->setPrivacyRules(Ljava/util/ArrayList;Z)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    if-eqz v2, :cond_7

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;

    if-eqz v2, :cond_5

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v4, -0x64

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    :cond_3
    :goto_2
    if-eqz v11, :cond_4

    move-object/from16 v0, v33

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$User;->id:I

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    :cond_4
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v0, v31

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v33

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v2, v4, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/NotificationsController;->setLastOnlineFromOtherDevice(I)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastWeek;

    if-eqz v2, :cond_6

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v4, -0x65

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_2

    :cond_6
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_userStatusLastMonth;

    if-eqz v2, :cond_3

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    const/16 v4, -0x66

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_2

    :cond_7
    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    if-eqz v2, :cond_c

    if-eqz v11, :cond_b

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isContact(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->first_name:Ljava/lang/String;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->last_name:Ljava/lang/String;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :cond_8
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    #getter for: Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$5500(Lorg/telegram/messenger/MessagesController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v4, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    #getter for: Lorg/telegram/messenger/MessagesController;->usersByUsernames:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$5500(Lorg/telegram/messenger/MessagesController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    invoke-virtual {v2, v4, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    :cond_b
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->first_name:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->last_name:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->username:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    if-eqz v2, :cond_e

    if-eqz v11, :cond_d

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    :cond_d
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v0, v31

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    if-eqz v2, :cond_10

    if-eqz v11, :cond_f

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->phone:Ljava/lang/String;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    sget-object v2, Lorg/telegram/messenger/Utilities;->phoneBookQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MessagesController$107$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Lorg/telegram/messenger/MessagesController$107$1;-><init>(Lorg/telegram/messenger/MessagesController$107;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_f
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->phone:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    if-eqz v2, :cond_19

    move-object/from16 v36, v33

    check-cast v36, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_peerNotifySettings;

    if-eqz v2, :cond_0

    move-object/from16 v0, v36

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_notifyPeer;

    if-eqz v2, :cond_0

    if-nez v15, :cond_11

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    :cond_11
    move-object/from16 v0, v36

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v2, :cond_14

    move-object/from16 v0, v36

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v2

    move-wide/from16 v16, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    if-eqz v14, :cond_12

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "silent_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->silent:Z

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    if-le v2, v4, :cond_17

    const/16 v32, 0x0

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    const v5, 0x1e13380

    add-int/2addr v4, v5

    if-le v2, v4, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify2_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz v14, :cond_13

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const v4, 0x7fffffff

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    :cond_13
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move/from16 v0, v32

    int-to-long v4, v0

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    const-wide/16 v6, 0x1

    or-long/2addr v4, v6

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/NotificationsController;->removeNotificationsForDialog(J)V

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, v36

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    if-eqz v2, :cond_15

    move-object/from16 v0, v36

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, v36

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;->peer:Lorg/telegram/tgnet/TLRPC$NotifyPeer;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$NotifyPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    move/from16 v32, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify2_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyuntil_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    if-eqz v14, :cond_13

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    move/from16 v0, v32

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    goto/16 :goto_4

    :cond_17
    if-eqz v14, :cond_18

    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

    const/4 v4, 0x0

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;->mute_until:I

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notify2_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->setDialogFlags(JJ)V

    goto/16 :goto_1

    :cond_19
    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v33

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    int-to-long v4, v4

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v33

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    if-eqz v10, :cond_1a

    if-nez v14, :cond_1b

    instance-of v2, v10, Lorg/telegram/tgnet/TLRPC$TL_channel;

    if-eqz v2, :cond_1b

    iget-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-nez v2, :cond_1b

    sget-object v2, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MessagesController$107$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/MessagesController$107$2;-><init>(Lorg/telegram/messenger/MessagesController$107;Lorg/telegram/tgnet/TLRPC$Update;)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_1a
    :goto_5
    move/from16 v0, v35

    or-int/lit16 v0, v0, 0x2000

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    move-object/from16 v0, v33

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->channel_id:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->loadFullChat(IIZ)V

    goto/16 :goto_1

    :cond_1b
    iget-boolean v2, v10, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz v2, :cond_1a

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-wide v4, v14, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    goto :goto_5

    :cond_1c
    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;

    if-eqz v2, :cond_1d

    move/from16 v0, v35

    or-int/lit16 v0, v0, 0x4000

    move/from16 v35, v0

    goto/16 :goto_1

    :cond_1d
    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    if-eqz v2, :cond_1f

    move-object/from16 v0, v33

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->masks:Z

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    :goto_6
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/query/StickersQuery;->loadStickers(IZZ)V

    goto/16 :goto_1

    :cond_1e
    const/4 v2, 0x0

    goto :goto_6

    :cond_1f
    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    if-eqz v2, :cond_21

    move-object/from16 v0, v33

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->masks:Z

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Update;->order:Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lorg/telegram/messenger/query/StickersQuery;->reorderStickers(ILjava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_20
    const/4 v2, 0x0

    goto :goto_7

    :cond_21
    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    if-eqz v2, :cond_22

    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->stickerset:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->addNewStickerSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    goto/16 :goto_1

    :cond_22
    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    if-eqz v2, :cond_23

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "emoji"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string/jumbo v2, "lastGifLoadTime"

    const-wide/16 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :cond_23
    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateRecentStickers;

    if-eqz v2, :cond_24

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "emoji"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string/jumbo v2, "lastStickersLoadTime"

    const-wide/16 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :cond_24
    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    if-eqz v2, :cond_27

    const/16 v23, 0x1

    move-object/from16 v2, v33

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    if-eqz v2, :cond_25

    move-object/from16 v0, v29

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    :goto_8
    move-object/from16 v0, v33

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Update;->draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v2, v4, v5}, Lorg/telegram/messenger/query/DraftQuery;->saveDraft(JLorg/telegram/tgnet/TLRPC$DraftMessage;Lorg/telegram/tgnet/TLRPC$Message;Z)V

    goto/16 :goto_1

    :cond_25
    move-object/from16 v0, v29

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_26

    move-object/from16 v0, v29

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v2, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    goto :goto_8

    :cond_26
    move-object/from16 v0, v29

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I

    neg-int v2, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    goto :goto_8

    :cond_27
    move-object/from16 v0, v33

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadFeaturedStickers;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Lorg/telegram/messenger/query/StickersQuery;->markFaturedStickersAsRead(Z)V

    goto/16 :goto_1

    :cond_28
    if-eqz v15, :cond_29

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_29
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v13, v4, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->updateUsers(Ljava/util/ArrayList;ZZZ)V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v12, v4, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->updateUsers(Ljava/util/ArrayList;ZZZ)V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$webPages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceivedWebpagesInUpdates:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessagesController$107;->val$webPages:Ljava/util/HashMap;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$webPages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_2b
    :goto_9
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    #getter for: Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$4200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-eqz v9, :cond_2b

    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/telegram/tgnet/TLRPC$WebPage;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v16, 0x0

    move-object/from16 v0, v38

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-nez v2, :cond_2c

    move-object/from16 v0, v38

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-eqz v2, :cond_2e

    :cond_2c
    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_2f

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v38

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez v8, :cond_2d

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v16

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLoader;->saveMessageThumbs(Lorg/telegram/tgnet/TLRPC$Message;)V

    :cond_2d
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    #getter for: Lorg/telegram/messenger/MessagesController;->reloadingWebpagesPending:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->access$4200(Lorg/telegram/messenger/MessagesController;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, v38

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v9, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_30
    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$messages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$messages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, v37

    invoke-virtual {v4, v6, v7, v0}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    goto :goto_b

    :cond_31
    const/16 v34, 0x1

    :cond_32
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$editingMessages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$editingMessages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/MessageObject;

    if-eqz v27, :cond_34

    const/4 v8, 0x0

    :goto_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v8, v4, :cond_34

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v27 .. v27}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v4, v5, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogMessage:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v4, :cond_33

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogMessagesByIds:Ljava/util/HashMap;

    invoke-virtual/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    const/16 v34, 0x1

    :cond_34
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v9, v4, v5}, Lorg/telegram/messenger/query/MessagesQuery;->loadReplyMessagesForMessages(Ljava/util/ArrayList;J)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->replaceMessagesObjects:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    const/4 v7, 0x1

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_35
    if-eqz v23, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Ljava/util/HashMap;)V

    const/16 v34, 0x1

    goto/16 :goto_c

    :cond_36
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_37
    if-eqz v34, :cond_38

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_38
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$printChangedArg:Z

    if-eqz v2, :cond_39

    or-int/lit8 v35, v35, 0x40

    :cond_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$contactsIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    or-int/lit8 v35, v35, 0x1

    move/from16 v0, v35

    or-int/lit16 v0, v0, 0x80

    move/from16 v35, v0

    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    const/4 v8, 0x0

    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$chatInfoToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->updateChatParticipants(Lorg/telegram/tgnet/TLRPC$ChatParticipants;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$107;->val$channelViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didUpdatedMessagesViews:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/MessagesController$107;->val$channelViews:Landroid/util/SparseArray;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3c
    if-eqz v35, :cond_3d

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3d
    return-void
.end method
