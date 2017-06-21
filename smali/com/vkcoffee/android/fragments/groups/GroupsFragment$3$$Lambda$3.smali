.class final synthetic Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final instance:Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3$$Lambda$3;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3$$Lambda$3;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3$$Lambda$3;->instance:Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3$$Lambda$3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3$$Lambda$3;->instance:Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/vkcoffee/android/api/Group;

    check-cast p2, Lcom/vkcoffee/android/api/Group;

    invoke-static {p1, p2}, Lcom/vkcoffee/android/fragments/groups/GroupsFragment$3;->lambda$null$389(Lcom/vkcoffee/android/api/Group;Lcom/vkcoffee/android/api/Group;)I

    move-result v0

    return v0
.end method
