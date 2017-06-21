.class Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$5;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->importContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 327
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v16, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 329
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 330
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .local v15, "needRawContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v14, "needContacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 332
    .local v19, "rawToContacts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 333
    .local v13, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 336
    .local v18, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "data1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "raw_contact_id"

    aput-object v6, v4, v5

    const-string/jumbo v5, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND data2=2"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 337
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_6

    .line 338
    :cond_0
    const-string/jumbo v3, "vk"

    const-string/jumbo v4, "cursor2.getCount = 0"

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 354
    :goto_0
    if-eqz v9, :cond_1

    .line 355
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_1
    const/4 v9, 0x0

    .line 360
    :try_start_1
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "contact_id"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-static {v6, v15}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "account_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "<>\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "com.vkcoffee.account"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 361
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 362
    :cond_2
    const-string/jumbo v3, "vk"

    const-string/jumbo v4, "cursor2.getCount = 0"

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 373
    :goto_1
    if-eqz v9, :cond_3

    .line 374
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_3
    const/4 v9, 0x0

    .line 379
    :try_start_2
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "display_name"

    aput-object v6, v4, v5

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-static {v6, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 380
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_b

    .line 381
    :cond_4
    const-string/jumbo v3, "vk"

    const-string/jumbo v4, "cursor2.getCount = 0"

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 394
    :goto_3
    if-eqz v9, :cond_5

    .line 395
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_5
    const/4 v10, 0x0

    .line 399
    .local v10, "i":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 400
    .local v11, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkcoffee/android/UserProfile;

    .line 401
    .local v17, "p":Lcom/vkcoffee/android/UserProfile;
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 403
    .local v8, "contactId":Ljava/lang/Long;
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 404
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_5
    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 406
    add-int/lit8 v10, v10, 0x1

    .line 407
    goto :goto_4

    .line 340
    .end local v8    # "contactId":Ljava/lang/Long;
    .end local v10    # "i":I
    .end local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/UserProfile;>;"
    .end local v17    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_6
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 342
    :cond_7
    const-string/jumbo v3, "data1"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 343
    .local v12, "n":Ljava/lang/String;
    new-instance v20, Lcom/vkcoffee/android/UserProfile;

    invoke-direct/range {v20 .. v20}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 344
    .local v20, "u":Lcom/vkcoffee/android/UserProfile;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v20

    iput-object v3, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    .line 345
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/vkcoffee/android/UserProfile;->extra:Landroid/os/Bundle;

    const-string/jumbo v4, "external_id"

    invoke-virtual {v3, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    .line 364
    .end local v12    # "n":Ljava/lang/String;
    .end local v20    # "u":Lcom/vkcoffee/android/UserProfile;
    :cond_8
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 366
    :cond_9
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_1

    .line 379
    :cond_a
    const/4 v4, 0x3

    :try_start_5
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "photo_thumb_uri"

    aput-object v6, v4, v5

    goto/16 :goto_2

    .line 392
    :catch_0
    move-exception v3

    goto/16 :goto_3

    .line 383
    :cond_b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 385
    :cond_c
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-interface {v9}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_d

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 387
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    :cond_d
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_3

    .line 404
    .restart local v8    # "contactId":Ljava/lang/Long;
    .restart local v10    # "i":I
    .restart local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/UserProfile;>;"
    .restart local v17    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 427
    .end local v8    # "contactId":Ljava/lang/Long;
    .end local v17    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_11

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$5$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$5$1;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$5;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 444
    :cond_10
    :goto_6
    return-void

    .line 443
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    const/4 v4, 0x0

    const-string/jumbo v5, "phone"

    move-object/from16 v0, v16

    invoke-static {v3, v0, v4, v5}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->access$1000(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 371
    .end local v10    # "i":I
    .end local v11    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/UserProfile;>;"
    :catch_1
    move-exception v3

    goto/16 :goto_1

    .line 352
    :catch_2
    move-exception v3

    goto/16 :goto_0
.end method
