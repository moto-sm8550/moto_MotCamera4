.class final Leb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Iterator;

.field public static final b:Ljava/lang/Iterable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lee;

    invoke-direct {v0}, Lee;-><init>()V

    sput-object v0, Leb;->a:Ljava/util/Iterator;

    .line 2
    new-instance v0, Led;

    invoke-direct {v0}, Led;-><init>()V

    sput-object v0, Leb;->b:Ljava/lang/Iterable;

    return-void
.end method
