.class public final Lcom/motorola/camera/storage/MediaFile$Companion;
.super Ljava/lang/Object;
.source "MediaFile.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/storage/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/motorola/camera/storage/MediaFile$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/storage/MediaFile$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/storage/MediaFile$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/storage/MediaFile$Companion;->$$INSTANCE:Lcom/motorola/camera/storage/MediaFile$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromMemento(Lcom/motorola/camera/storage/MediaFile$Memento;)Lcom/motorola/camera/storage/MediaFile;
    .locals 4

    const-string p0, "memento"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaFile$Memento;->getBackend()Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "finished is null"

    const-string/jumbo v1, "uri is null"

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaFile$Memento;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 4
    new-instance v1, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;

    invoke-direct {v1, p0}, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;-><init>(Landroid/net/Uri;)V

    .line 5
    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaFile$Memento;->getFinished()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 6
    iput-boolean p0, v1, Lcom/motorola/camera/storage/backend/ExternalUriMediaFile;->isFinished:Z

    goto :goto_1

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    const/4 v2, 0x2

    if-eqz p0, :cond_7

    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_7

    .line 10
    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaFile$Memento;->getPath()Lcom/motorola/camera/storage/MediaFilePath;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 11
    new-instance v2, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;

    invoke-direct {v2, p0}, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;-><init>(Lcom/motorola/camera/storage/MediaFilePath;)V

    .line 12
    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaFile$Memento;->getFinished()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 13
    iput-boolean p0, v2, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->isFinished:Z

    .line 14
    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaFile$Memento;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 15
    iput-object p0, v2, Lcom/motorola/camera/storage/backend/MediaStoreMediaFile;->mediaItemUri:Landroid/net/Uri;

    move-object v1, v2

    :goto_1
    return-object v1

    .line 16
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "path is null"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "backend is "

    .line 20
    invoke-static {v0}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/motorola/camera/storage/MediaFile$Memento;->getBackend()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
