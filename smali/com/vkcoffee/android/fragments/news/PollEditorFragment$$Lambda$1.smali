.class final synthetic Lcom/vkcoffee/android/fragments/news/PollEditorFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;)V

    return-object v0
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/news/PollEditorFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->lambda$initAnimation$491()Z

    move-result v0

    return v0
.end method
