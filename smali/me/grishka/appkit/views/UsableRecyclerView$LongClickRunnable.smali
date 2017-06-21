.class Lme/grishka/appkit/views/UsableRecyclerView$LongClickRunnable;
.super Ljava/lang/Object;
.source "UsableRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/views/UsableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongClickRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/views/UsableRecyclerView;


# direct methods
.method private constructor <init>(Lme/grishka/appkit/views/UsableRecyclerView;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lme/grishka/appkit/views/UsableRecyclerView$LongClickRunnable;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/grishka/appkit/views/UsableRecyclerView;Lme/grishka/appkit/views/UsableRecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lme/grishka/appkit/views/UsableRecyclerView;
    .param p2, "x1"    # Lme/grishka/appkit/views/UsableRecyclerView$1;

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$LongClickRunnable;-><init>(Lme/grishka/appkit/views/UsableRecyclerView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 481
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$LongClickRunnable;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->access$800(Lme/grishka/appkit/views/UsableRecyclerView;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 490
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$LongClickRunnable;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->access$1102(Lme/grishka/appkit/views/UsableRecyclerView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 483
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$LongClickRunnable;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->access$400(Lme/grishka/appkit/views/UsableRecyclerView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 484
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$LongClickRunnable;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->access$600(Lme/grishka/appkit/views/UsableRecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Lme/grishka/appkit/views/UsableRecyclerView;->access$1200()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 485
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$LongClickRunnable;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->access$800(Lme/grishka/appkit/views/UsableRecyclerView;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;

    invoke-interface {v1}, Lme/grishka/appkit/views/UsableRecyclerView$LongClickable;->onLongClick()Z

    move-result v0

    .line 486
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 487
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$LongClickRunnable;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->performHapticFeedback(I)Z

    .line 489
    :cond_1
    iget-object v1, p0, Lme/grishka/appkit/views/UsableRecyclerView$LongClickRunnable;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v1, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->access$802(Lme/grishka/appkit/views/UsableRecyclerView;Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    goto :goto_0
.end method
