.class final synthetic Lcom/vkcoffee/android/fragments/friends/SearchIndexer$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/friends/SearchIndexer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$$Lambda$1;->arg$2:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/friends/SearchIndexer;Ljava/lang/String;)Ljava/util/Comparator;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/friends/SearchIndexer;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/friends/SearchIndexer;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/SearchIndexer$$Lambda$1;->arg$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/fragments/friends/SearchIndexer;->lambda$search$351(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
