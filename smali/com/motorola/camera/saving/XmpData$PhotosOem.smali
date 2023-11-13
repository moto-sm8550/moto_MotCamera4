.class public final Lcom/motorola/camera/saving/XmpData$PhotosOem;
.super Ljava/lang/Object;
.source "XmpData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/saving/XmpData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotosOem"
.end annotation


# instance fields
.field public final mBurstId:Ljava/lang/String;

.field public final mPrimary:Ljava/lang/Boolean;

.field public final mSpecialType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/saving/XmpData$PhotosOem;->mSpecialType:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/motorola/camera/saving/XmpData$PhotosOem;->mBurstId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/motorola/camera/saving/XmpData$PhotosOem;->mPrimary:Ljava/lang/Boolean;

    return-void
.end method
