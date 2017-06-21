.class Lcom/tonicartos/superslim/LayoutManager$LayoutParams$InvalidFirstPositionException;
.super Ljava/lang/RuntimeException;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/superslim/LayoutManager$LayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidFirstPositionException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/tonicartos/superslim/LayoutManager$LayoutParams;)V
    .locals 1

    .prologue
    .line 2033
    iput-object p1, p0, Lcom/tonicartos/superslim/LayoutManager$LayoutParams$InvalidFirstPositionException;->this$0:Lcom/tonicartos/superslim/LayoutManager$LayoutParams;

    .line 2034
    const-string/jumbo v0, "Invalid section first position given."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2035
    return-void
.end method
