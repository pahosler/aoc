fn main() {

    let input = include_str!("./day1.input");
    let output = part1(input);
    dbg!(output);


    let input = include_str!("./day1.input");
    let output = part2(input);
    dbg!(output);
}


fn part1(input: &str) -> String {
    todo!("do something!")
}

fn part2(input: &str) -> String {
    todo!("do something!")
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_part_one() {
        let input = include_str!("day1.test1");
        let output = part1(input);
        assert!(output == "123");
    }

    #[test]
    fn test_part_two() {
        let input = include_str!("day1.test2");
        let output = part2(input);
        assert!(output == "456");
    }
}
