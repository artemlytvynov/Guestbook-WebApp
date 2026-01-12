package sumdu.edu.ua.core.domain;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.Instant;

@Entity
@Table(name = "comments")
@Getter
@Setter
@NoArgsConstructor
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    long id;

    @Column(nullable = false)
    private Long bookId;

    @Column(nullable = false)
    String author;

    @Column(length = 2000)
    String text;

    @Column(nullable = false)
    Instant createdAt;

    public Comment(long bookId, String author, String text, Instant createdAt) {
        this.bookId = bookId;
        this.author = author;
        this.text = text;
        this.createdAt = createdAt;
    }
}
