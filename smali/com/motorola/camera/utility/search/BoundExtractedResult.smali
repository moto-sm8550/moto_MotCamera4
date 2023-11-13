.class public final Lcom/motorola/camera/utility/search/BoundExtractedResult;
.super Ljava/lang/Object;
.source "BoundExtractedResult.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/motorola/camera/utility/search/BoundExtractedResult<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public score:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/search/BoundExtractedResult;->referent:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/utility/search/BoundExtractedResult;->score:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lcom/motorola/camera/utility/search/BoundExtractedResult;

    const-string v0, "other"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget p0, p0, Lcom/motorola/camera/utility/search/BoundExtractedResult;->score:I

    iget p1, p1, Lcom/motorola/camera/utility/search/BoundExtractedResult;->score:I

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    return p0
.end method
