.class Lcom/vkcoffee/android/Emoji$ParserLookupNode;
.super Ljava/lang/Object;
.source "Emoji.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/Emoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParserLookupNode"
.end annotation


# instance fields
.field public expectedFollowing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/Emoji$ParserLookupNode;",
            ">;"
        }
    .end annotation
.end field

.field public index:I

.field public page:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput v0, p0, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->page:I

    .line 342
    iput v0, p0, Lcom/vkcoffee/android/Emoji$ParserLookupNode;->index:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/Emoji$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/Emoji$1;

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/vkcoffee/android/Emoji$ParserLookupNode;-><init>()V

    return-void
.end method
