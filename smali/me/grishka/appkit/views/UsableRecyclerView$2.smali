.class Lme/grishka/appkit/views/UsableRecyclerView$2;
.super Ljava/lang/Object;
.source "UsableRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/grishka/appkit/views/UsableRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/grishka/appkit/views/UsableRecyclerView;


# direct methods
.method constructor <init>(Lme/grishka/appkit/views/UsableRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lme/grishka/appkit/views/UsableRecyclerView;

    .prologue
    .line 201
    iput-object p1, p0, Lme/grishka/appkit/views/UsableRecyclerView$2;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView$2;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->access$400(Lme/grishka/appkit/views/UsableRecyclerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView$2;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->access$400(Lme/grishka/appkit/views/UsableRecyclerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 206
    :cond_0
    iget-object v0, p0, Lme/grishka/appkit/views/UsableRecyclerView$2;->this$0:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-static {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->access$600(Lme/grishka/appkit/views/UsableRecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lme/grishka/appkit/views/UsableRecyclerView;->access$500()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 207
    return-void
.end method
