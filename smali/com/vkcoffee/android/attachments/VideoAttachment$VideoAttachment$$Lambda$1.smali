.class public Lcom/vkcoffee/android/attachments/VideoAttachment$VideoAttachment$$Lambda$1;
.super Ljava/lang/Object;
.source "VideoAttachment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/attachments/VideoAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoAttachment$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/attachments/VideoAttachment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/attachments/VideoAttachment;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/attachments/VideoAttachment;

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$VideoAttachment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/attachments/VideoAttachment;

    .line 464
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/attachments/VideoAttachment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "var0"    # Lcom/vkcoffee/android/attachments/VideoAttachment;

    .prologue
    .line 467
    new-instance v0, Lcom/vkcoffee/android/attachments/VideoAttachment$VideoAttachment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/attachments/VideoAttachment$VideoAttachment$$Lambda$1;-><init>(Lcom/vkcoffee/android/attachments/VideoAttachment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment$VideoAttachment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/attachments/VideoAttachment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/attachments/VideoAttachment;->lambda$getView$220(Landroid/view/View;)V

    .line 472
    return-void
.end method
