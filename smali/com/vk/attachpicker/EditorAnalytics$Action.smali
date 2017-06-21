.class Lcom/vk/attachpicker/EditorAnalytics$Action;
.super Ljava/lang/Object;
.source "EditorAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/EditorAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Action"
.end annotation


# instance fields
.field public isFinal:Z

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/vk/attachpicker/EditorAnalytics$Action;->title:Ljava/lang/String;

    .line 123
    return-void
.end method
