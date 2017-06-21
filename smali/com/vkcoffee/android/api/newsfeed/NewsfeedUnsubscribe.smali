.class public Lcom/vkcoffee/android/api/newsfeed/NewsfeedUnsubscribe;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "NewsfeedUnsubscribe.java"


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "id"    # I
    .param p3, "type"    # I

    .prologue
    .line 9
    const-string/jumbo v0, "newsfeed.unsubscribe"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 10
    const-string/jumbo v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedUnsubscribe;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    const-string/jumbo v1, "item_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    packed-switch p3, :pswitch_data_0

    .line 26
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "post"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedUnsubscribe;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    :goto_0
    return-void

    .line 13
    :pswitch_0
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "photo"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedUnsubscribe;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 16
    :pswitch_1
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "video"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedUnsubscribe;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 19
    :pswitch_2
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "topic"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedUnsubscribe;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 22
    :pswitch_3
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "note"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedUnsubscribe;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 11
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
