.class Lcom/vkcoffee/android/StackBlur$BlurStack;
.super Ljava/lang/Object;
.source "StackBlur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/StackBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlurStack"
.end annotation


# instance fields
.field b:I

.field g:I

.field next:Lcom/vkcoffee/android/StackBlur$BlurStack;

.field r:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/StackBlur$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/StackBlur$1;

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/vkcoffee/android/StackBlur$BlurStack;-><init>()V

    return-void
.end method
