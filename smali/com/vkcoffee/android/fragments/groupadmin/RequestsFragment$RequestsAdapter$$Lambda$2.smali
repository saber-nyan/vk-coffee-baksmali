.class final synthetic Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF2Int;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;)Lcom/vkcoffee/android/functions/VoidF2Int;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;

    check-cast p1, Lcom/vkcoffee/android/api/FriendRequest;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/groupadmin/RequestsFragment$RequestsAdapter;->lambda$onCreateViewHolder$381(Lcom/vkcoffee/android/api/FriendRequest;Ljava/lang/Boolean;I)V

    return-void
.end method
