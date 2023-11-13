.class public final synthetic Lcom/motorola/camera/storage/MediaStoreClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient$$ExternalSyntheticLambda0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/storage/MediaStoreClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/motorola/camera/storage/MediaStoreClient$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/motorola/camera/storage/MediaStoreClient$$ExternalSyntheticLambda0;->INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient$$ExternalSyntheticLambda0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    sget-object p0, Lcom/motorola/camera/storage/MediaStoreClient;->INSTANCE:Lcom/motorola/camera/storage/MediaStoreClient;

    new-instance p0, Ljava/lang/Thread;

    const-string v0, "MediaStoreClient"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0
.end method
