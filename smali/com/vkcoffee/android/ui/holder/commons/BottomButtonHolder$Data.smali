.class public Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;
.super Ljava/lang/Object;
.source "BottomButtonHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public final onClickListener:Landroid/view/View$OnClickListener;

.field public final text:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;Ljava/lang/Object;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p2, "text"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;->onClickListener:Landroid/view/View$OnClickListener;

    .line 19
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/commons/BottomButtonHolder$Data;->text:Ljava/lang/Object;

    .line 20
    return-void
.end method
