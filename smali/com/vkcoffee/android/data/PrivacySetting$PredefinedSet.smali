.class public Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;
.super Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
.source "PrivacySetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/data/PrivacySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PredefinedSet"
.end annotation


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private editTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 400
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "in"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;-><init>()V

    .line 395
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->title:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->value:Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->editTitle:Ljava/lang/String;

    .line 398
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/utils/Serializer;Lcom/vkcoffee/android/data/PrivacySetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/utils/Serializer;
    .param p2, "x1"    # Lcom/vkcoffee/android/data/PrivacySetting$1;

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;-><init>(Lcom/vkcoffee/android/utils/Serializer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "editTitle"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->title:Ljava/lang/String;

    .line 368
    iput-object p3, p0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->value:Ljava/lang/String;

    .line 369
    iput-object p2, p0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->editTitle:Ljava/lang/String;

    .line 370
    return-void
.end method


# virtual methods
.method public apiValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public displayValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->title:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 413
    instance-of v0, p1, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->value:Ljava/lang/String;

    check-cast p1, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEditTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->editTitle:Ljava/lang/String;

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting$PredefinedSet;->editTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 392
    return-void
.end method
