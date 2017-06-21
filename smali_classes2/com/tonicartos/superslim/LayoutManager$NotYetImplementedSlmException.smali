.class Lcom/tonicartos/superslim/LayoutManager$NotYetImplementedSlmException;
.super Ljava/lang/RuntimeException;
.source "LayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tonicartos/superslim/LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotYetImplementedSlmException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tonicartos/superslim/LayoutManager;


# direct methods
.method public constructor <init>(Lcom/tonicartos/superslim/LayoutManager;I)V
    .locals 2
    .param p2, "id"    # I

    .prologue
    .line 2082
    iput-object p1, p0, Lcom/tonicartos/superslim/LayoutManager$NotYetImplementedSlmException;->this$0:Lcom/tonicartos/superslim/LayoutManager;

    .line 2083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SLM not yet implemented "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2084
    return-void
.end method
