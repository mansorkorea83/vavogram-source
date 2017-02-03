.class public Lnet/hockeyapp/android/utils/FeedbackParser;
.super Ljava/lang/Object;
.source "FeedbackParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/FeedbackParser$FeedbackParserHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/utils/FeedbackParser$1;)V
    .locals 0

    invoke-direct {p0}, Lnet/hockeyapp/android/utils/FeedbackParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/hockeyapp/android/utils/FeedbackParser;
    .locals 1

    sget-object v0, Lnet/hockeyapp/android/utils/FeedbackParser$FeedbackParserHolder;->INSTANCE:Lnet/hockeyapp/android/utils/FeedbackParser;

    return-object v0
.end method


# virtual methods
.method public parseFeedbackResponse(Ljava/lang/String;)Lnet/hockeyapp/android/objects/FeedbackResponse;
    .locals 38

    const/16 v16, 0x0

    const/4 v10, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v36, "feedback"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    new-instance v11, Lnet/hockeyapp/android/objects/Feedback;

    invoke-direct {v11}, Lnet/hockeyapp/android/objects/Feedback;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    const-string/jumbo v36, "messages"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    const/16 v24, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v36

    if-lez v36, :cond_1

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    :goto_0
    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v19

    move/from16 v1, v36

    if-ge v0, v1, :cond_1

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "subject"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "text"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "oem"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "model"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "os_version"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "created_at"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "token"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "via"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "user_string"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "clean_text"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "name"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "app_id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "attachments"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    if-eqz v22, :cond_0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/16 v21, 0x0

    :goto_1
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v21

    move/from16 v1, v36

    if-ge v0, v1, :cond_0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "feedback_message_id"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "file_name"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "url"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "created_at"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    const-string/jumbo v37, "updated_at"

    invoke-virtual/range {v36 .. v37}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v12, Lnet/hockeyapp/android/objects/FeedbackAttachment;

    invoke-direct {v12}, Lnet/hockeyapp/android/objects/FeedbackAttachment;-><init>()V

    invoke-virtual {v12, v4}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setId(I)V

    invoke-virtual {v12, v5}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setMessageId(I)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setFilename(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setCreatedAt(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Lnet/hockeyapp/android/objects/FeedbackAttachment;->setUpdatedAt(Ljava/lang/String;)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    :cond_0
    new-instance v14, Lnet/hockeyapp/android/objects/FeedbackMessage;

    invoke-direct {v14}, Lnet/hockeyapp/android/objects/FeedbackMessage;-><init>()V

    invoke-virtual {v14, v2}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setCleanText(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setCreatedAt(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setId(I)V

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setModel(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setName(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setOem(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setOsVersion(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setSubjec(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setText(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setToken(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setUserString(Ljava/lang/String;)V

    move/from16 v0, v35

    invoke-virtual {v14, v0}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setVia(I)V

    invoke-virtual {v14, v13}, Lnet/hockeyapp/android/objects/FeedbackMessage;->setFeedbackAttachments(Ljava/util/List;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setMessages(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string/jumbo v36, "name"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setName(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    :try_start_3
    const-string/jumbo v36, "email"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setEmail(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    const-string/jumbo v36, "id"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setId(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    const-string/jumbo v36, "created_at"

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lnet/hockeyapp/android/objects/Feedback;->setCreatedAt(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    new-instance v17, Lnet/hockeyapp/android/objects/FeedbackResponse;

    invoke-direct/range {v17 .. v17}, Lnet/hockeyapp/android/objects/FeedbackResponse;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setFeedback(Lnet/hockeyapp/android/objects/Feedback;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    :try_start_8
    const-string/jumbo v36, "status"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setStatus(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_5

    :goto_6
    :try_start_9
    const-string/jumbo v36, "token"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/FeedbackResponse;->setToken(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_7

    :goto_7
    move-object v10, v11

    move-object/from16 v16, v17

    :cond_2
    :goto_8
    return-object v16

    :catch_0
    move-exception v9

    :try_start_a
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    move-object v10, v11

    :goto_9
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8

    :catch_2
    move-exception v9

    :try_start_b
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v9

    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_5

    :catch_5
    move-exception v9

    :try_start_c
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    :catch_6
    move-exception v9

    move-object v10, v11

    move-object/from16 v16, v17

    goto :goto_9

    :catch_7
    move-exception v9

    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_7

    :catch_8
    move-exception v9

    goto :goto_9
.end method
