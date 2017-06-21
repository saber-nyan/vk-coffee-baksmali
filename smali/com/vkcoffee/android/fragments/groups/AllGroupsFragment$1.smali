.class Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$1;
.super Lcom/vkcoffee/android/fragments/friends/SearchIndexer$SimpleProvider;
.source "AllGroupsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/friends/SearchIndexer$SimpleProvider",
        "<",
        "Lcom/vkcoffee/android/api/Group;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment;

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$SimpleProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndexChar(Lcom/vkcoffee/android/api/Group;)[C
    .locals 6
    .param p1, "from"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    const/4 v5, 0x0

    .line 38
    if-eqz p1, :cond_1

    .line 39
    iget-object v3, p1, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "words":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [C

    .line 41
    .local v1, "result":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 42
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 41
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    aget-object v3, v2, v0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v1, v0

    goto :goto_1

    .line 49
    .end local v0    # "i":I
    .end local v1    # "result":[C
    .end local v2    # "words":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    new-array v1, v3, [C

    aput-char v5, v1, v5

    :cond_2
    return-object v1
.end method

.method public bridge synthetic getIndexChar(Ljava/lang/Object;)[C
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/vkcoffee/android/api/Group;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$1;->getIndexChar(Lcom/vkcoffee/android/api/Group;)[C

    move-result-object v0

    return-object v0
.end method

.method public matches(Ljava/lang/String;Lcom/vkcoffee/android/api/Group;)Z
    .locals 2
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/vkcoffee/android/api/Group;

    .prologue
    .line 55
    iget-object v0, p2, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic matches(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    check-cast p2, Lcom/vkcoffee/android/api/Group;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/groups/AllGroupsFragment$1;->matches(Ljava/lang/String;Lcom/vkcoffee/android/api/Group;)Z

    move-result v0

    return v0
.end method
