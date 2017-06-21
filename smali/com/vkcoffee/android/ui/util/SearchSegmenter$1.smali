.class Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;
.super Ljava/lang/Object;
.source "SearchSegmenter.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/util/SearchSegmenter;->runSearchRequest(II)V
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
        "Lme/grishka/appkit/api/PaginatedList",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

.field final synthetic val$count:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/util/SearchSegmenter;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    .prologue
    .line 58
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iput p2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->val$offset:I

    iput p3, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 4
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 84
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mListener:Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mListener:Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v1, v1, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mQuery:Ljava/lang/String;

    iget v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->val$offset:I

    iget v3, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->val$count:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener;->onError(Lme/grishka/appkit/api/ErrorResponse;Ljava/lang/String;II)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mFooter:Lcom/vkcoffee/android/ui/util/Segmenter$Footer;

    sget-object v1, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;->Error:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    iput-object v1, v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;->mState:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mFooter:Lcom/vkcoffee/android/ui/util/Segmenter$Footer;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCode()I

    move-result v2

    iget-object v3, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/api/APIUtils;->getLocalizedError(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;->mText:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mExecuting:Z

    .line 94
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 58
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;"
    check-cast p1, Lme/grishka/appkit/api/PaginatedList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->success(Lme/grishka/appkit/api/PaginatedList;)V

    return-void
.end method

.method public success(Lme/grishka/appkit/api/PaginatedList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/grishka/appkit/api/PaginatedList",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;, "Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;"
    .local p1, "result":Lme/grishka/appkit/api/PaginatedList;, "Lme/grishka/appkit/api/PaginatedList<+TT;>;"
    const/4 v3, 0x0

    .line 61
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mListener:Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mListener:Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v4, v4, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mQuery:Ljava/lang/String;

    iget v5, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->val$offset:I

    iget v6, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->val$count:I

    invoke-interface {v2, p1, v4, v5, v6}, Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener;->onSuccess(Lme/grishka/appkit/api/PaginatedList;Ljava/lang/String;II)V

    .line 70
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lme/grishka/appkit/api/PaginatedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 71
    invoke-virtual {p1, v0}, Lme/grishka/appkit/api/PaginatedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 72
    .local v1, "item":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mLocalSearchData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mGlobalSearchData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget v5, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->val$offset:I

    iget v6, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->val$count:I

    add-int/2addr v5, v6

    iput v5, v2, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mOffset:I

    invoke-virtual {p1}, Lme/grishka/appkit/api/PaginatedList;->total()I

    move-result v2

    if-ge v5, v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v4, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mMoreAvailable:Z

    .line 77
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mFooter:Lcom/vkcoffee/android/ui/util/Segmenter$Footer;

    sget-object v4, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;->Loading:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    iput-object v4, v2, Lcom/vkcoffee/android/ui/util/Segmenter$Footer;->mState:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    .line 78
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 79
    iget-object v2, p0, Lcom/vkcoffee/android/ui/util/SearchSegmenter$1;->this$0:Lcom/vkcoffee/android/ui/util/SearchSegmenter;

    iput-boolean v3, v2, Lcom/vkcoffee/android/ui/util/SearchSegmenter;->mExecuting:Z

    .line 80
    return-void

    :cond_3
    move v2, v3

    .line 76
    goto :goto_1
.end method
