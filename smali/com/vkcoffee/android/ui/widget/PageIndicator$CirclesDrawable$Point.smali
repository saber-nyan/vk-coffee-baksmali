.class Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Point"
.end annotation


# instance fields
.field color:I

.field size:I

.field final synthetic this$0:Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;II)V
    .locals 0
    .param p2, "color"    # I
    .param p3, "size"    # I

    .prologue
    .line 278
    iput-object p1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->this$0:Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->setColor(I)V

    .line 280
    invoke-virtual {p0, p3}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->setSize(I)V

    .line 281
    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 284
    iput p1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->color:I

    .line 285
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->this$0:Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->invalidateSelf()V

    .line 286
    return-void
.end method

.method public setSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 289
    iput p1, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->size:I

    .line 290
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable$Point;->this$0:Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/PageIndicator$CirclesDrawable;->invalidateSelf()V

    .line 291
    return-void
.end method
