.class Lcom/vkcoffee/android/fragments/PostViewFragment$22;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PostViewFragment;->loadVideoInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PostViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$22;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    .line 1949
    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;)V
    .locals 13
    .param p1, "r"    # Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1951
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$22;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    const/16 v2, 0x8

    iget-boolean v5, p1, Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;->isLiked:Z

    invoke-virtual {v0, v2, v5}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 1952
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$22;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$5(Lcom/vkcoffee/android/fragments/PostViewFragment;)Lcom/vkcoffee/android/NewsEntry;

    move-result-object v0

    iget v2, p1, Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;->numLikes:I

    iput v2, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 1953
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$22;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$6(Lcom/vkcoffee/android/fragments/PostViewFragment;)V

    .line 1954
    iget-object v0, p1, Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1955
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1956
    .local v3, "ssb":Landroid/text/SpannableStringBuilder;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$22;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080270

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1957
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x555556

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v3, v0, v1, v2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1958
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1959
    .local v11, "tt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;->tags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1960
    .local v8, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1964
    const-string v0, ", "

    invoke-static {v0, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    .line 1965
    .local v10, "t":Ljava/lang/String;
    const-string v0, " "

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1966
    const/4 v0, 0x2

    invoke-static {v10, v0}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1967
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$22;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->access$10(Lcom/vkcoffee/android/fragments/PostViewFragment;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v0, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    const/4 v6, 0x1

    move v2, v1

    move v5, v1

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/PostViewFragment$22;->this$0:Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/PostViewFragment;->updateList()V

    .line 1970
    .end local v3    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local v8    # "it":Ljava/util/Iterator;
    .end local v10    # "t":Ljava/lang/String;
    .end local v11    # "tt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 1961
    .restart local v3    # "ssb":Landroid/text/SpannableStringBuilder;
    .restart local v8    # "it":Ljava/util/Iterator;
    .restart local v11    # "tt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/UserProfile;

    .line 1962
    .local v9, "p":Lcom/vkcoffee/android/UserProfile;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[id"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v9, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v9, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PostViewFragment$22;->success(Lcom/vkcoffee/android/api/video/VideoGetInfo$Result;)V

    return-void
.end method
