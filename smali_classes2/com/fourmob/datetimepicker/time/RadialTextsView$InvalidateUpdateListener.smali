.class Lcom/fourmob/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;
.super Ljava/lang/Object;
.source "RadialTextsView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fourmob/datetimepicker/time/RadialTextsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidateUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fourmob/datetimepicker/time/RadialTextsView;


# direct methods
.method private constructor <init>(Lcom/fourmob/datetimepicker/time/RadialTextsView;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;->this$0:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fourmob/datetimepicker/time/RadialTextsView;Lcom/fourmob/datetimepicker/time/RadialTextsView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fourmob/datetimepicker/time/RadialTextsView;
    .param p2, "x1"    # Lcom/fourmob/datetimepicker/time/RadialTextsView$1;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/fourmob/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;-><init>(Lcom/fourmob/datetimepicker/time/RadialTextsView;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/fourmob/datetimepicker/time/RadialTextsView$InvalidateUpdateListener;->this$0:Lcom/fourmob/datetimepicker/time/RadialTextsView;

    invoke-virtual {v0}, Lcom/fourmob/datetimepicker/time/RadialTextsView;->invalidate()V

    .line 344
    return-void
.end method
