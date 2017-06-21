.class public Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;
.super Ljava/lang/Object;
.source "ArrowItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public listener:Landroid/view/View$OnClickListener;

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;->listener:Landroid/view/View$OnClickListener;

    .line 22
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;->title:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;->text:Ljava/lang/String;

    .line 24
    return-void
.end method
