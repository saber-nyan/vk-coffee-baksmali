.class final synthetic Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/functions/VoidF1;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;)Lcom/vkcoffee/android/functions/VoidF1;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;)V

    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;

    check-cast p1, Lcom/vkcoffee/android/api/Group;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/groups/EventsFragment$Adapter;->lambda$new$384(Lcom/vkcoffee/android/api/Group;)V

    return-void
.end method
