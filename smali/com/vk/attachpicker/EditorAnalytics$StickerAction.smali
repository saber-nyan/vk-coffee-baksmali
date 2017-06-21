.class Lcom/vk/attachpicker/EditorAnalytics$StickerAction;
.super Lcom/vk/attachpicker/EditorAnalytics$Action;
.source "EditorAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/EditorAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StickerAction"
.end annotation


# instance fields
.field public final ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/EditorAnalytics$Action;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/EditorAnalytics$StickerAction;->ids:Ljava/util/ArrayList;

    .line 132
    return-void
.end method
