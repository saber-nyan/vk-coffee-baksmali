.class Lcom/vkcoffee/android/MessagesImportant$1;
.super Ljava/lang/Object;
.source "MessagesImportant.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MessagesImportant;->lambda$getHistory$267(IIIILcom/vkcoffee/android/data/Messages$GetMessagesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field private final synthetic val$_numUnread:I

.field private final synthetic val$ccnt:I

.field private final synthetic val$getMessagesCallback2:Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

.field private final synthetic val$i6:I

.field private final synthetic val$i7:I

.field private final synthetic val$i8:I

.field private final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;IIIII)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$result:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$getMessagesCallback2:Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    iput p3, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i6:I

    iput p4, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i7:I

    iput p5, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$_numUnread:I

    iput p6, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$ccnt:I

    iput p7, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i8:I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 106
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FAIL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$getMessagesCallback2:Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v1

    iget-object v2, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;->onError(ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;)V
    .locals 10
    .param p1, "r"    # Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 79
    iget-object v6, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$result:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;->msgs:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v1, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$getMessagesCallback2:Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;

    .line 81
    .local v1, "getMessagesCallback":Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;
    iget-object v0, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$result:Ljava/util/ArrayList;

    .line 82
    .local v0, "arrayList":Ljava/util/ArrayList;
    iget v6, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i6:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i7:I

    iget v7, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$_numUnread:I

    add-int/2addr v6, v7

    if-gtz v6, :cond_9

    :cond_0
    iget v6, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$_numUnread:I

    if-lez v6, :cond_8

    move v2, v5

    .line 83
    .local v2, "i":I
    :goto_0
    invoke-interface {v1, v0, v2}, Lcom/vkcoffee/android/data/Messages$GetMessagesCallback;->onMessagesLoaded(Ljava/util/ArrayList;I)V

    .line 84
    iget v6, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i6:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i6:I

    if-ne v6, v9, :cond_1

    iget v6, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$_numUnread:I

    if-eqz v6, :cond_2

    :cond_1
    iget v6, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i7:I

    iget v7, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$_numUnread:I

    add-int/2addr v6, v7

    if-gtz v6, :cond_3

    :cond_2
    iget v6, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$ccnt:I

    iget v7, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i7:I

    iget v8, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$_numUnread:I

    add-int/2addr v7, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-lt v6, v7, :cond_3

    .line 85
    iget-object v6, p1, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;->msgs:Lcom/vkcoffee/android/data/VKList;

    invoke-static {v6}, Lcom/vkcoffee/android/cache/Cache;->addMessages(Ljava/util/List;)V

    .line 87
    :cond_3
    iget v6, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i6:I

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i6:I

    if-ne v6, v9, :cond_7

    .line 88
    :cond_4
    invoke-static {}, Lcom/vkcoffee/android/MessagesImportant;->access$0()Lcom/vkcoffee/android/cache/LruCache;

    move-result-object v6

    iget v7, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i8:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 89
    invoke-static {}, Lcom/vkcoffee/android/MessagesImportant;->access$0()Lcom/vkcoffee/android/cache/LruCache;

    move-result-object v6

    iget v7, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i8:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/vkcoffee/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_5
    invoke-static {}, Lcom/vkcoffee/android/MessagesImportant;->access$0()Lcom/vkcoffee/android/cache/LruCache;

    move-result-object v6

    iget v7, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i8:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 92
    .local v4, "ramCache":Ljava/util/ArrayList;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i7:I

    iget v8, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$_numUnread:I

    add-int/2addr v7, v8

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-le v6, v7, :cond_6

    .line 93
    iget v6, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i7:I

    iget v7, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$_numUnread:I

    add-int/2addr v6, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 95
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i7:I

    iget v8, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$_numUnread:I

    add-int/2addr v7, v8

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ne v6, v5, :cond_7

    .line 96
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 97
    .local v3, "len":I
    iget-object v5, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget-object v5, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 102
    .end local v3    # "len":I
    .end local v4    # "ramCache":Ljava/util/ArrayList;
    :cond_7
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Returinig peer "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i8:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " history from network"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void

    .line 82
    .end local v2    # "i":I
    :cond_8
    iget v2, p1, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;->offset:I

    goto/16 :goto_0

    :cond_9
    iget v6, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$i7:I

    iget v7, p0, Lcom/vkcoffee/android/MessagesImportant$1;->val$_numUnread:I

    add-int v2, v6, v7

    goto/16 :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/MessagesImportant$1;->success(Lcom/vkcoffee/android/api/messages/MessagesGetHistory$Result;)V

    return-void
.end method
