.class public Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;
.super Ljava/lang/Object;
.source "GameButtonShowAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ref"
.end annotation


# instance fields
.field public final onClickListener:Landroid/view/View$OnClickListener;

.field public final titleRes:I


# direct methods
.method public constructor <init>(ILandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "titleRes"    # I
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;->titleRes:I

    .line 21
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/gamepage/GameButtonShowAll$Ref;->onClickListener:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method
