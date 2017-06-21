.class public final Lcom/vkcoffee/android/orm/View$MetaData;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/orm/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetaData"
.end annotation


# instance fields
.field final inheritance:Z

.field final name:Ljava/lang/String;

.field final query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/orm/View;)V
    .locals 1
    .param p1, "view"    # Lcom/vkcoffee/android/orm/View;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/View;->value()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/View$MetaData;->name:Ljava/lang/String;

    .line 34
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/View;->query()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/View$MetaData;->query:Ljava/lang/String;

    .line 35
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/View;->inheritance()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/orm/View$MetaData;->inheritance:Z

    .line 36
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "inheritance"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/vkcoffee/android/orm/View$MetaData;->name:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/vkcoffee/android/orm/View$MetaData;->query:Ljava/lang/String;

    .line 29
    iput-boolean p3, p0, Lcom/vkcoffee/android/orm/View$MetaData;->inheritance:Z

    .line 30
    return-void
.end method
