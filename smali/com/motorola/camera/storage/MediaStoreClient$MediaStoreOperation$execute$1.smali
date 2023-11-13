.class public final Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation$execute$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaStoreClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation;->execute()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation$execute$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation$execute$1;

    invoke-direct {v0}, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation$execute$1;-><init>()V

    sput-object v0, Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation$execute$1;->INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient$MediaStoreOperation$execute$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    const-string p0, "execute error"

    return-object p0
.end method
