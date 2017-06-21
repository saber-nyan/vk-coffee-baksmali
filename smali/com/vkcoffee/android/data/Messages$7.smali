.class final Lcom/vkcoffee/android/data/Messages$7;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/Messages;->lambda$getHistory$267(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$_numUnread:I

.field final synthetic val$cap$0:I

.field final synthetic val$cap$1:I

.field final synthetic val$cap$3:I

.field final synthetic val$cap$4:Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

.field final synthetic val$ccnt:I

.field final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;IIIII)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/vkcoffee/android/data/Messages$7;->val$result:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$4:Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    iput p3, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$3:I

    iput p4, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$1:I

    iput p5, p0, Lcom/vkcoffee/android/data/Messages$7;->val$_numUnread:I

    iput p6, p0, Lcom/vkcoffee/android/data/Messages$7;->val$ccnt:I

    iput p7, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 757
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FAIL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$4:Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v1

    iget-object v2, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;->onError(ILjava/lang/String;)V

    .line 759
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;)V
    .locals 8
    .param p1, "r"    # Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 728
    iget-object v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$result:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;->msgs:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 729
    iget-object v4, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$4:Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    iget-object v5, p0, Lcom/vkcoffee/android/data/Messages$7;->val$result:Ljava/util/ArrayList;

    iget v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$3:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$1:I

    iget v6, p0, Lcom/vkcoffee/android/data/Messages$7;->val$_numUnread:I

    add-int/2addr v2, v6

    if-gtz v2, :cond_9

    :cond_0
    iget v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$_numUnread:I

    if-lez v2, :cond_8

    move v2, v3

    :goto_0
    invoke-interface {v4, v5, v2}, Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;->onMessagesLoaded(Ljava/util/ArrayList;I)V

    .line 730
    iget v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$3:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$3:I

    if-ne v2, v7, :cond_1

    iget v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$_numUnread:I

    if-eqz v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$1:I

    iget v4, p0, Lcom/vkcoffee/android/data/Messages$7;->val$_numUnread:I

    add-int/2addr v2, v4

    if-gtz v2, :cond_3

    .line 731
    :cond_2
    iget v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$ccnt:I

    iget v4, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$1:I

    iget v5, p0, Lcom/vkcoffee/android/data/Messages$7;->val$_numUnread:I

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-lt v2, v4, :cond_3

    .line 732
    iget-object v2, p1, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;->msgs:Lcom/vkcoffee/android/data/VKList;

    invoke-static {v2}, Lcom/vkcoffee/android/cache/Cache;->addMessages(Ljava/util/List;)V

    .line 735
    :cond_3
    iget v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$3:I

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$3:I

    if-ne v2, v7, :cond_7

    .line 736
    :cond_4
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->access$300()Landroid/util/LruCache;

    move-result-object v2

    iget v4, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$0:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    .line 737
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->access$300()Landroid/util/LruCache;

    move-result-object v2

    iget v4, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$0:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    :cond_5
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->access$300()Landroid/util/LruCache;

    move-result-object v2

    iget v4, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$0:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 740
    .local v1, "ramCache":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v4, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$1:I

    iget v5, p0, Lcom/vkcoffee/android/data/Messages$7;->val$_numUnread:I

    add-int/2addr v4, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-le v2, v4, :cond_6

    .line 741
    iget v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$1:I

    iget v4, p0, Lcom/vkcoffee/android/data/Messages$7;->val$_numUnread:I

    add-int/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 743
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v4, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$1:I

    iget v5, p0, Lcom/vkcoffee/android/data/Messages$7;->val$_numUnread:I

    add-int/2addr v4, v5

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 744
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 745
    .local v0, "len":I
    iget-object v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 746
    iget-object v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 749
    .end local v0    # "len":I
    .end local v1    # "ramCache":Ljava/util/ArrayList;
    :cond_7
    new-instance v2, Landroid/util/Pair;

    iget v3, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;->unread:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/cache/Cache;->updateMessagesUnreadCount(Ljava/util/List;)V

    .line 751
    const-string/jumbo v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Returinig peer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$0:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " history from network"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    return-void

    .line 729
    :cond_8
    iget v2, p1, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;->offset:I

    goto/16 :goto_0

    :cond_9
    iget v2, p0, Lcom/vkcoffee/android/data/Messages$7;->val$cap$1:I

    iget v6, p0, Lcom/vkcoffee/android/data/Messages$7;->val$_numUnread:I

    add-int/2addr v2, v6

    goto/16 :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 725
    check-cast p1, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/Messages$7;->success(Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;)V

    return-void
.end method
