.class Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$1;
.super Ljava/lang/Object;
.source "QuickSearchFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$1;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndexChar(Lcom/vkcoffee/android/UserProfile;)[C
    .locals 7
    .param p1, "from"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    const/16 v4, 0x20

    const/4 v6, 0x0

    .line 53
    iget v3, p1, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-lez v3, :cond_4

    .line 54
    const/4 v3, 0x3

    new-array v1, v3, [C

    iget-object v3, p1, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 55
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    aput-char v3, v1, v6

    const/4 v5, 0x1

    iget-object v3, p1, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 56
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    aput-char v3, v1, v5

    const/4 v3, 0x2

    iget-object v5, p1, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    .line 57
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    aput-char v4, v1, v3

    .line 69
    :cond_0
    return-object v1

    .line 55
    :cond_1
    iget-object v3, p1, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    goto :goto_0

    .line 56
    :cond_2
    iget-object v3, p1, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    goto :goto_1

    .line 57
    :cond_3
    iget-object v4, p1, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    goto :goto_2

    .line 60
    :cond_4
    iget-object v3, p1, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "words":[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [C

    .line 62
    .local v1, "result":[C
    iget-object v3, p1, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_3
    aput-char v4, v1, v6

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 64
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 63
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 62
    .end local v0    # "i":I
    :cond_5
    iget-object v3, p1, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    goto :goto_3

    .line 67
    .restart local v0    # "i":I
    :cond_6
    add-int/lit8 v3, v0, 0x1

    aget-object v4, v2, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aput-char v4, v1, v3

    goto :goto_5
.end method

.method public bridge synthetic getIndexChar(Ljava/lang/Object;)[C
    .locals 1

    .prologue
    .line 49
    check-cast p1, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$1;->getIndexChar(Lcom/vkcoffee/android/UserProfile;)[C

    move-result-object v0

    return-object v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public matches(Ljava/lang/String;Lcom/vkcoffee/android/UserProfile;)Z
    .locals 4
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    iget v2, p2, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-lez v2, :cond_3

    .line 76
    iget-object v2, p2, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p2, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p2, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    .line 78
    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v2, p2, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p2, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic matches(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 49
    check-cast p2, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$1;->matches(Ljava/lang/String;Lcom/vkcoffee/android/UserProfile;)Z

    move-result v0

    return v0
.end method

.method public priority(Ljava/lang/String;Lcom/vkcoffee/android/UserProfile;)I
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/vkcoffee/android/UserProfile;

    .prologue
    const/4 v0, 0x1

    .line 84
    iget-object v1, p2, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$1;->this$0:Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;

    iput-boolean v0, v1, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment;->mFoundDomain:Z

    .line 86
    const v0, 0x7fffffff

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    iget v1, p2, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-gtz v1, :cond_0

    .line 91
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic priority(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 49
    check-cast p2, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/search/QuickSearchFragment$1;->priority(Ljava/lang/String;Lcom/vkcoffee/android/UserProfile;)I

    move-result v0

    return v0
.end method
