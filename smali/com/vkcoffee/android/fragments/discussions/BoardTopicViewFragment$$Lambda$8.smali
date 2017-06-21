.class final synthetic Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

.field private final arg$2:Lcom/vkcoffee/android/api/board/BoardComment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$$Lambda$8;->arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$$Lambda$8;->arg$2:Lcom/vkcoffee/android/api/board/BoardComment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/api/board/BoardComment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$$Lambda$8;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$$Lambda$8;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/api/board/BoardComment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$$Lambda$8;->arg$1:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$$Lambda$8;->arg$2:Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->lambda$showCommentActions$327(Lcom/vkcoffee/android/api/board/BoardComment;Landroid/content/DialogInterface;I)V

    return-void
.end method
