.class final synthetic Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$SelectorBoundsProvider;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$$Lambda$3;->arg$1:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Lme/grishka/appkit/views/UsableRecyclerView$SelectorBoundsProvider;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$$Lambda$3;-><init>(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)V

    return-object v0
.end method


# virtual methods
.method public getSelectorBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$$Lambda$3;->arg$1:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->lambda$onViewCreated$345(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
